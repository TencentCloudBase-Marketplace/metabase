#!/bin/sh

# 创建数据库
echo "创建数据库：${MB_DB_DBNAME}"
echo "create database if not exists ${MB_DB_DBNAME}" | mysql -h ${MB_DB_HOST} -P ${MB_DB_PORT} -u ${MB_DB_USER} -p${MB_DB_PASS}
echo "创建数据库成功：${MB_DB_DBNAME}"

exec "$@"
