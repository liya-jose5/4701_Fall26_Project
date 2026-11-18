from flask_login import UserMixin
from db.database import get_db_connection

class User(UserMixin):
    def __init__(self, user_id, name, role):
        self.id = f"{role}:{user_id}"
        self.name = name
        self.role = role

def load_user(user_id):
    try:
        role, database_id = user_id.split(":", 1)
        database_id = int(database_id)
    except (ValueError, AttributeError):
        return None

    db = get_db_connection()
    cursor = db.cursor(dictionary=True)

    try:
        if role == "customer":
            cursor.execute("""
                SELECT customer_id, customer_name
                FROM Customers
                WHERE customer_id = %s
            """, (database_id,))

            user = cursor.fetchone()

            if user:
                return User(
                    user["customer_id"],
                    user["customer_name"],
                    "customer"
                )

        elif role == "employee":

            cursor.execute("""
                SELECT employee_id, employee_name
                FROM Employees
                WHERE employee_id = %s
            """, (database_id,))

            user = cursor.fetchone()

            if user:
                return User(
                    user["employee_id"],
                    user["employee_name"],
                    "employee"
                )
        return None

    finally:

        cursor.close()
        db.close()
