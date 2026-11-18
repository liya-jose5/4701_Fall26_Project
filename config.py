import os

class Config:
    SECRET_KEY = os.environ.get(
        "SECRET_KEY",
        "development-secret-change-me"
    )

    ORACLE_HOST = os.environ.get("ORACLE_HOST", "localhost")
    ORACLE_PORT = os.environ.get("ORACLE_PORT", "1521")
    ORACLE_USER = os.environ.get("ORACLE_USER", "system")
    ORACLE_PASSWORD = os.environ.get("DB_PASSWORD")
    ORACLE_SERVICE_NAME = os.environ.get(
        "ORACLE_SERVICE_NAME",
        "XEPDB1"
    )