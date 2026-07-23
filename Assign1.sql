mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anudip             |
| docbuddy_db        |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
8 rows in set (0.05 sec)

mysql> create database ecommerce;
Query OK, 1 row affected (0.02 sec)
mysql> show databases;
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| anudip             |
| docbuddy_db        |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
9 rows in set (0.09 sec)

mysql> use ecommerce;
Database changed

mysql> create table customer(c_id VARCHAR(10) primary key, name VARCHAR(30) not null, city VARCHAR(20) not null,pincode INT(6) not null);
Query OK, 0 rows affected, 1 warning (0.16 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| c_id    | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(20) | NO   |     | NULL    |       |
| pincode | int         | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.07 sec)

mysql> select * from customer;
Empty set (0.02 sec)

mysql> insert into customer(c_id,name,city,pincode) values("C101","Sneha","Thane",400604);
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+------+-------+-------+---------+
| c_id | name  | city  | pincode |
+------+-------+-------+---------+
| C101 | Sneha | Thane |  400604 |
+------+-------+-------+---------+
1 row in set (0.00 sec)

mysql> insert into customer values("C102","Samarth","Mumbai",400601);
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+------+---------+--------+---------+
| c_id | name    | city   | pincode |
+------+---------+--------+---------+
| C101 | Sneha   | Thane  |  400604 |
| C102 | Samarth | Mumbai |  400601 |
+------+---------+--------+---------+
2 rows in set (0.00 sec)

mysql> insert into customer values("C103","Annu","Badlapur",400600),("C104","Taniya","Titwala",400608);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+------+---------+----------+---------+
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C101 | Sneha   | Thane    |  400604 |
| C102 | Samarth | Mumbai   |  400601 |
| C103 | Annu    | Badlapur |  400600 |
| C104 | Taniya  | Titwala  |  400608 |
+------+---------+----------+---------+
4 rows in set (0.00 sec)

mysql> select name from customer;
+---------+
| name    |
+---------+
| Sneha   |
| Samarth |
| Annu    |
| Taniya  |
+---------+
4 rows in set (0.00 sec)