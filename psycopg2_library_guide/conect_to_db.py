import psycopg2
from config import config


def connect():
    """ Подключение к БД PostgreSQl """
    conn = None

    try:
        # получение параметров для подключения
        params = config()

        # подключение к серверу PostgreSQL и к БД
        print('Подключение к серверу PostgreSQL базаданных...')
        conn = psycopg2.connect(**params)

        # создаем курсор
        cur = conn.cursor()

        # execute a statement
        print('PostgreSQL версии:')
        cur.execute('SELECT version()')

        # display the PostgreSQL database server version
        db_version = cur.fetchone()
        print(db_version)

        # close the communication with the PostgreSQL
        cur.close()
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)

    finally:
        if conn is not None:
            conn.close()
            print('Подключение к БД закрыто')


if __name__ == '__main__':
    connect()
