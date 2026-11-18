import os

class Config:
    SECRET_KEY = os.environ.get(
        "SECRET_KEY",
        "development-secret-change-me"
    )

    MYSQL_HOST = "localhost"
    MYSQL_USER = "root"
    MYSQL_PASSWORD = os.environ.get("DB_PASSWORD")
    MYSQL_DATABASE = "package_delivery"

