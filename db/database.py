import oracledb
from flask import current_app


def get_db_connection():
    return oracledb.connector.connect(
        host=current_app.config["ORACLE_HOST"],
        user=current_app.config["ORACLE_USER"],
        password=current_app.config["ORACLE_PASSWORD"],
        database=current_app.config["ORACLE_DATABASE"]
    )
