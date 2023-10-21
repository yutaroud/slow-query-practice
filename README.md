# slow-query-practice

## start

* m1,m2: `docker-compose -fdocker-compose.yml -f docker-compose.m1.yml up -d`
* other: `docker-compose up -d`

## connection

* `docker-compose run cli`

## data init

* `docker exec -it slow-query-practice-mysql-1 bash /data/isucon11_sql/init.sh`
