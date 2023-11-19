# 使用docker-compose安装mysql

## 1. 创建工作目录

~~~bash
mkdir -p /apps/mysql/{datadir,conf}
~~~

## 2. 编写docker-compose.yaml

~~~yaml
version: '3'
services:
  mysql:
    restart: always
    image: mysql
    container_name: mysql-lable
    command: mysqld --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
    volumes:
      - /home/luoyang/dockerfile/mysql/datadir:/var/lib/mysql
      - /home/luoyang/dockerfile/mysql/conf:/etc/mysql/conf.d
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_USER: user
      MYSQL_PASSWORD: user
    ports:
      # 使用宿主机的3306端口映射到容器的3306端口
      # 宿主机：容器
      - 3306:3306
~~~

## 3. 启动容器

~~~bash
docker-compose up -d mysql
~~~

## 4. 测试连接

~~~bash
docker exec -it c4d08acf6e88 bash
bash-4.4# mysql -uroot -p
Enter password:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)
bash-4.4# mysql -uroot -p
Enter password:
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.1.0 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.
mysql>
~~~
