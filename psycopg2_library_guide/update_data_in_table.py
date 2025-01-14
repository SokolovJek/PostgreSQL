import psycopg2
from config import config


def update_data(vendor_id, vendor_name):
    """
    update vendor name based on the vendor id
    :param vendor_id:
    :param vendor_name:
    :return:
    """

    sql = """UPDATE vendors
        SET vendor_name = %s
        WHERE vendor_id = %s
    """
    conn = None
    updated_rows = 0

    try:
        param = config()
        conn = psycopg2.connect(**param)
        cur = conn.cursor()
        # execute the UPDATE  statement
        cur.execute(sql, (vendor_name, vendor_id))

        # get the number of updated rows
        updated_rows = cur.rowcount
        # Commit the changes to the database
        conn.commit()
        # Close communication with the PostgreSQL database
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
            conn.close()
            return updated_rows


if __name__ == "__main__":
    # Update vendor id 6
    rows = update_data(6, '3M Corp Krainik+')
    print(rows)
