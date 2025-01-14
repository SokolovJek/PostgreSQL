# Подготовка к работе:

## в папке psycopg2_library_guide все что относится к данной библиотеке

### установить библиотеки (если MacOS то pip3 install psycopg2)
- pip install psycopg2
- pip install psycopg2-binary

### создать БД
- CREATE DATABASE suppliers;
### внести данные
- заполнить database.ini своими данными для подключение к БД


## в папке raw_request_to_db находится сырые запросы к БД


### для запуска контейнера
- docker compose up -d
