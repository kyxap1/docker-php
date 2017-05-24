## Minimalistic application stack: php7-fpm, mysql, redis
Deploy PHP app to docker container

## How to use

1. Make sure you have `docker` and `docker-compose` installed.
2. Put your PHP application source code to `app` directory.
3. Tune `./conf/php.ini` if you need.
4. Fill `.env` with your settings.
5. Ensure your application to use hosts `db` and `cache` accordingly for mysql and redis connections.
6. Have your application configured to use environment variables `MYSQL_DATABASE`, `MYSQL_USER`, `MYSQL_PASSWORD`.
7. Run ```make``` within `docker-php` root directory to build and run containers.
8. Read `Makefile` to know your `make` shortcuts.
