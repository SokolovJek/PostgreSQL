import psycopg2
from config import config


def insert_vendor(vendor_name):
    """
    Функция для вставки значения в таблицу vendor
    :param vendor_name:
    :return: vendor_id
    """
    sql = """INSERT INTO vendors(vendor_name)
            VALUES(%s) RETURNING (vendor_id);
        """
    conn = None
    vendor_id = None
    try:
        params = config()
        conn = psycopg2.connect(**params)
        cur = conn.cursor()
        # execute the INSERT statement
        cur.execute(sql, (vendor_name,))
        # get the generated id back
        # print('это метод fetchone: ', cur.fetchone())
        vendor_id = cur.fetchone()[0]
        conn.commit()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as errors:
        print(errors)
    finally:
        if conn is not None:
            conn.close()
    return vendor_id


def insert_into_vendor_many_values(vendors_list):
    """
    Функция для вставки набора значений в таблицу vendor
    :param vendors_list:
    :return:
    """
    sql = """INSERT INTO vendors (vendor_name) VALUES (%s);"""
    conn = None

    try:
        params = config()

        conn = psycopg2.connect(**params)
        cur = conn.cursor()
        cur.executemany(sql, vendors_list)
        conn.commit()
        cur.close()
    except (Exception, psycopg2.DatabaseError) as errors:
        print(errors)
    finally:
        if conn is not None:
            conn.close()


if __name__ == '__main__':
    # insert one vendor
    insert_vendor_id = insert_vendor("3M Compani + Brazers")
    print(insert_vendor_id)  # 17

    # insert multiple vendors
    insert_into_vendor_many_values([
        ('AKM Semiconductor Inc.',),
        ('Asahi Glass Co Ltd.',),
        ('Daikin Industries Ltd.',),
        ('Dynacast International Inc.',),
        ('Foster Electric Co. Ltd.',),
        ('Murata Manufacturing Co. Ltd.',)
    ])
