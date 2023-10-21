#!/bin/bash
set -xu -o pipefail

CURRENT_DIR=$(cd $(dirname $0);pwd)

export MYSQL_PORT=${MYSQL_PORT:-3306}
export MYSQL_USER=${MYSQL_USER:-user}
export MYSQL_DBNAME=${MYSQL_DBNAME:-db}
export MYSQL_PWD=${MYSQL_PASS:-password}
export LANG="C.UTF-8"
cd $CURRENT_DIR

cat 0_Schema.sql 1_InitData.sql | mysql --defaults-file=/dev/null -P $MYSQL_PORT -u $MYSQL_USER $MYSQL_DBNAME
