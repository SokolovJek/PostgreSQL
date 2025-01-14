import psycopg2
from config import config


def select(table_name):
    """
    Функция вывода данных из таблици
    :param table_name:
    :return: данные из table_name
    """
    conn = None
    sql = f"""SELECT * FROM {table_name}"""

    try:
        print(f"\n{table_name}".upper())
        param = config()
        conn = psycopg2.connect(**param)
        cur = conn.cursor()
        cur.execute(sql, (table_name,))
        data_table = cur.fetchall()
        for data in data_table:
            print(data)
        cur.close()

    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()


if __name__ == "__main__":
    select("vendors")
    select("parts")
    select("vendor_parts")
