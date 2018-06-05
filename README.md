## Minimalistic application stack: php7-fpm, mysql, redis
Deploy PHP app to docker container

## How to use

1. Make sure you have `docker` and `docker-compose` installed.
2. Put your PHP application source code to `app` directory.
3. Tune `./conf/php.ini` if you need.
4. Fill `.env` with your settings.
5. Ensure your application to use hosts `db` and `cache` for mysql and redis connections.
6. Have your application configured to use same credentials as `MYSQL_DATABASE`, `MYSQL_USER`, `MYSQL_PASSWORD`.
7. Run ```make``` within `docker-php` root directory to build and run containers.
8. Read `Makefile` to know your `make` shortcuts.

## How to check cache

```bash
kyxap@workbench:~/tmp/docker-php$ wget -q -O - http://localhost:8089/date.php
Tue, 05 Jun 18 14:14:40 +0000
kyxap@workbench:~/tmp/docker-php$ wget -q -O - http://localhost:8089/date.php --header="X-Update: 1"
Tue, 05 Jun 18 14:15:03 +0000
```

When a container is started for the first time, a new database with the specified name will be created and initialized with the provided configuration variables. Furthermore, it will execute files with extensions .sh, .sql and .sql.gz that are found in /docker-entrypoint-initdb.d. Files will be executed in alphabetical order. You can easily populate your mysql services by mounting a SQL dump into that directory and provide custom images with contributed data. SQL files will be imported by default to the database specified by the MYSQL_DATABASE variable.
