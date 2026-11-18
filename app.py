from flask import Flask
import mysql.connector
from functools import wraps
from config import Config
from db.database import get_db_connection
from models import User, load_user

from flask import (
    Flask,
    render_template,
    request,
    redirect,
    url_for,
    flash
)

from flask_login import (
    LoginManager,
    login_user,
    logout_user,
    login_required,
    current_user
)

from werkzeug.security import (
    generate_password_hash,
    check_password_hash
)

app = Flask(__name__)
app.config.from_object(Config)
login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = "customer_login"
login_manager.user_loader(load_user)


# creating roles 
def role_required(required_role):
    def decorator(function):
        @wraps(function)
        @login_required
        def wrapper(*args, **kwargs):
            if current_user.role != required_role:
                return "Access denied", 403
            return function(*args, **kwargs)
        return wrapper
    return decorator


# registration route
@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "POST":
        name = request.form["name"]
        email = request.form["email"]
        phone = request.form["phone"]
        password = request.form["password"]
        if len(password) < 8:
            flash("Password must be at least 8 characters.")
            return render_template("register.html")
        password_hash = generate_password_hash(password)
        db = get_db_connection()
        cursor = db.cursor()
        try:
            cursor.execute("""
                INSERT INTO Customers
                (customer_name, email, phone, password_hash)
                VALUES (%s, %s, %s, %s)
            """, (name, email, phone, password_hash))
            db.commit()
            flash("Registration successful. Please log in.")
            return redirect(url_for("customer_login"))
        except mysql.connector.IntegrityError:
            db.rollback()
            flash("This email is already registered.")
        finally:
            cursor.close()
            db.close()
    return render_template("register.html")


# customer login route
@app.route("/customer/login", methods=["GET", "POST"])
def customer_login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        db = get_db_connection()
        cursor = db.cursor(dictionary=True)
        try:
            cursor.execute("""
                SELECT *
                FROM Customers
                WHERE email = %s
            """, (email,))
            customer = cursor.fetchone()
            if customer and check_password_hash(
                customer["password_hash"],
                password
            ):
                user = User(
                    customer["customer_id"],
                    customer["customer_name"],
                    "customer"
                )
                login_user(user)
                return redirect(
                    url_for("customer_dashboard")
                )
            flash("Invalid email or password.")
        finally:
            cursor.close()
            db.close()
    return render_template("customer_login.html")


# employee login route
@app.route("/employee/login", methods=["GET", "POST"])
def employee_login():
    if request.method == "POST":
        email = request.form["email"]
        password = request.form["password"]
        db = get_db_connection()
        cursor = db.cursor(dictionary=True)
        try:
            cursor.execute("""
                SELECT *
                FROM Employees
                WHERE email = %s
            """, (email,))
            employee = cursor.fetchone()
            if employee and check_password_hash(
                employee["password_hash"],
                password
            ):
                user = User(
                    employee["employee_id"],
                    employee["employee_name"],
                    "employee"
                )
                login_user(user)
                return redirect(
                    url_for("employee_dashboard")
                )
            flash("Invalid email or password.")
        finally:
            cursor.close()
            db.close()
    return render_template("employee_login.html")


# dashboards - customer and employee
@app.route("/customer/dashboard")
@role_required("customer")
def customer_dashboard():
    return render_template(
        "customer_dashboard.html",
        customer_name=current_user.name
    )

@app.route("/employee/dashboard")
@role_required("employee")
def employee_dashboard():
    return render_template(
        "employee_dashboard.html",
        employee_name=current_user.name
    )


# log out routes
@app.route("/customer/logout")
@role_required("customer")
def customer_logout():
    logout_user()
    flash("You have been logged out.")
    return redirect(url_for("customer_login"))


@app.route("/employee/logout")
@role_required("employee")
def employee_logout():
    logout_user()
    flash("You have been logged out.")
    return redirect(url_for("employee_login"))


# unauthorized handler

@login_manager.unauthorized_handler
def unauthorized():
    if request.path.startswith("/employee"):
        return redirect(url_for("employee_login"))
    return redirect(url_for("customer_login"))


if __name__ == "__main__":
    app.run(debug=True)