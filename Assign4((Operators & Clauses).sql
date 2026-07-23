mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| docbuddy_db        |
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| student_db         |
| sys                |
| world              |
+--------------------+
9 rows in set (0.07 sec)

mysql> use ecommerce;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.02 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| c_id    | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
| email   | varchar(30) | NO   |     | NULL    |       |
| pincode | int         | YES  |     | NULL    |       |
| salary  | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> select * from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.01 sec)

mysql> select distinct city from customer;
+--------+
| city   |
+--------+
| Mumbai |
| Delhi  |
| Pune   |
| Nashik |
| Surat  |
+--------+
5 rows in set (0.01 sec)

mysql> select * from customer where pincode between 395001 and 4111001;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
6 rows in set (0.00 sec)

mysql> select * from customer where pincode not between 395001 and 4111001;
+------+-------+-------+-----------------+---------+--------+
| c_id | name  | city  | email           | pincode | salary |
+------+-------+-------+-----------------+---------+--------+
| C102 | Rahul | Delhi | rahul@gmail.com |  110001 |  60000 |
+------+-------+-------+-----------------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select * from customer where name between 'a' and 'd';
+------+--------+--------+------------------+---------+--------+
| c_id | name   | city   | email            | pincode | salary |
+------+--------+--------+------------------+---------+--------+
| C103 | Amit   | Pune   | amit@gmail.com   |  411001 |  45000 |
| C105 | Bharti | Surat  | bharti@gmail.com |  395001 |  70000 |
| C107 | Aditi  | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+--------+--------+------------------+---------+--------+
3 rows in set (0.00 sec)

mysql> select * from customer where name not between 'a' and 'd';
+------+---------+--------+-----------------+---------+--------+
| c_id | name    | city   | email           | pincode | salary |
+------+---------+--------+-----------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com |  110001 |  60000 |
| C104 | Priya   | Nashik | priya@gmail.com |  422001 |  55000 |
| C106 | Samarth | Surat  | sam@gmail.com   |  395005 |  48000 |
+------+---------+--------+-----------------+---------+--------+
4 rows in set (0.00 sec)

mysql> select * from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.01 sec)


mysql> select * from customer where c_id in('C103','C106');
+------+---------+-------+----------------+---------+--------+
| c_id | name    | city  | email          | pincode | salary |
+------+---------+-------+----------------+---------+--------+
| C103 | Amit    | Pune  | amit@gmail.com |  411001 |  45000 |
| C106 | Samarth | Surat | sam@gmail.com  |  395005 |  48000 |
+------+---------+-------+----------------+---------+--------+
2 rows in set (0.02 sec)

mysql> select * from customer where pincode in(395001,4111001);
+------+--------+-------+------------------+---------+--------+
| c_id | name   | city  | email            | pincode | salary |
+------+--------+-------+------------------+---------+--------+
| C105 | Bharti | Surat | bharti@gmail.com |  395001 |  70000 |
+------+--------+-------+------------------+---------+--------+
1 row in set (0.00 sec)

mysql> select * from customer where pincode in(395001,411001);
+------+--------+-------+------------------+---------+--------+
| c_id | name   | city  | email            | pincode | salary |
+------+--------+-------+------------------+---------+--------+
| C103 | Amit   | Pune  | amit@gmail.com   |  411001 |  45000 |
| C105 | Bharti | Surat | bharti@gmail.com |  395001 |  70000 |
+------+--------+-------+------------------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from customer where pincode not in(395001,411001);
+------+---------+--------+-----------------+---------+--------+
| c_id | name    | city   | email           | pincode | salary |
+------+---------+--------+-----------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com |  110001 |  60000 |
| C104 | Priya   | Nashik | priya@gmail.com |  422001 |  55000 |
| C106 | Samarth | Surat  | sam@gmail.com   |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com |  500409 |  28000 |
+------+---------+--------+-----------------+---------+--------+
5 rows in set (0.01 sec)

mysql> select * from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select *from customer where name is null;
Empty set (0.00 sec)

mysql> select *from customer where name is not null;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select *from customer order by pincode;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.01 sec)

mysql> select *from customer order by name;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select *from customer order by name desc;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select *from customer order by pincode desc;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql> select *from customer order by pincode desc limit 4;
+------+-------+--------+-----------------+---------+--------+
| c_id | name  | city   | email           | pincode | salary |
+------+-------+--------+-----------------+---------+--------+
| C107 | Aditi | Mumbai | aditi@gmail.com |  500409 |  28000 |
| C104 | Priya | Nashik | priya@gmail.com |  422001 |  55000 |
| C103 | Amit  | Pune   | amit@gmail.com  |  411001 |  45000 |
| C101 | Sneha | Mumbai | sneha@gmail.com |  400080 |  50000 |
+------+-------+--------+-----------------+---------+--------+
4 rows in set (0.01 sec)

mysql>  select *from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql>  select *from customer where city='Nashik' and pin_code=422001;
ERROR 1054 (42S22): Unknown column 'pin_code' in 'where clause'
mysql>  select *from customer where city='Nashik' and pincode=422001;
+------+-------+--------+-----------------+---------+--------+
| c_id | name  | city   | email           | pincode | salary |
+------+-------+--------+-----------------+---------+--------+
| C104 | Priya | Nashik | priya@gmail.com |  422001 |  55000 |
+------+-------+--------+-----------------+---------+--------+
1 row in set (0.00 sec)

mysql>  select *from customer where city='Mumbai' or pincode=400080;
+------+-------+--------+-----------------+---------+--------+
| c_id | name  | city   | email           | pincode | salary |
+------+-------+--------+-----------------+---------+--------+
| C101 | Sneha | Mumbai | sneha@gmail.com |  400080 |  50000 |
| C107 | Aditi | Mumbai | aditi@gmail.com |  500409 |  28000 |
+------+-------+--------+-----------------+---------+--------+
2 rows in set (0.00 sec)

mysql>  select *from customer;
+------+---------+--------+------------------+---------+--------+
| c_id | name    | city   | email            | pincode | salary |
+------+---------+--------+------------------+---------+--------+
| C101 | Sneha   | Mumbai | sneha@gmail.com  |  400080 |  50000 |
| C102 | Rahul   | Delhi  | rahul@gmail.com  |  110001 |  60000 |
| C103 | Amit    | Pune   | amit@gmail.com   |  411001 |  45000 |
| C104 | Priya   | Nashik | priya@gmail.com  |  422001 |  55000 |
| C105 | Bharti  | Surat  | bharti@gmail.com |  395001 |  70000 |
| C106 | Samarth | Surat  | sam@gmail.com    |  395005 |  48000 |
| C107 | Aditi   | Mumbai | aditi@gmail.com  |  500409 |  28000 |
+------+---------+--------+------------------+---------+--------+
7 rows in set (0.00 sec)

mysql>  select sum(salary) from customer;
+-------------+
| sum(salary) |
+-------------+
|      356000 |
+-------------+
1 row in set (0.01 sec)

mysql>  select count(salary) from customer;
+---------------+
| count(salary) |
+---------------+
|             7 |
+---------------+
1 row in set (0.00 sec)

mysql>  select avg(salary) from customer;
+-------------+
| avg(salary) |
+-------------+
|  50857.1429 |
+-------------+
1 row in set (0.00 sec)

mysql>  select min(salary) from customer;
+-------------+
| min(salary) |
+-------------+
|       28000 |
+-------------+
1 row in set (0.00 sec)

mysql>  select max(salary) from customer;
+-------------+
| max(salary) |
+-------------+
|       70000 |
+-------------+
1 row in set (0.00 sec)
