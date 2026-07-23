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
9 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
+---------------------+
1 row in set (0.00 sec)

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C101 | Sneha   | Thane    |  400604 |
| C102 | Samarth | Mumbai   |  400601 |
| C103 | Annu    | Badlapur |  400600 |
| C104 | Taniya  | Titwala  |  400608 |
| C105 | Rishika | Delhi    |  400100 |
+------+---------+----------+---------+
5 rows in set (0.00 sec)

mysql> select name from customer;
+---------+
| name    |
+---------+
| Sneha   |
| Samarth |
| Annu    |
| Taniya  |
| Rishika  |
+---------+
5 rows in set (0.00 sec)

mysql> update customer set name = 'Ishika' where c_id = C105;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C101 | Sneha   | Thane    |  400604 |
| C102 | Samarth | Mumbai   |  400601 |
| C103 | Annu    | Badlapur |  400600 |
| C104 | Taniya  | Titwala  |  400608 |
| C105 | Ishika | Delhi    |  400100 |
+------+---------+----------+---------+
5 rows in set (0.00 sec)

mysql> update customer set city = 'Surat' where c_id =C102;
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0 

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C101 | Sneha   | Thane    |  400604 |
| C102 | Samarth | Surat   |  400601 |
| C103 | Annu    | Badlapur |  400600 |
| C104 | Taniya  | Titwala  |  400608 |
| C105 | Ishika | Delhi    |  400100 |
+------+---------+----------+---------+
5 rows in set (0.00 sec)

mysql> delete from customer where c_id =C101;
Query OK, 1 row affected (0.05 sec)

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C102 | Samarth | Surat   |  400601 |
| C103 | Annu    | Badlapur |  400600 |
| C104 | Taniya  | Titwala  |  400608 |
| C105 | Ishika | Delhi    |  400100 |
+------+---------+----------+---------+
4 rows in set (0.00 sec)

mysql> delete from customer;
Query OK, 4 rows affected (0.05 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| c_id    | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
| pincode | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into customer values ('C101','Samarth','Surat',395005),
('C102','Aditi','Mumbai',500409);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C101 |Samarth   | Surat   | 395005 |
| C102 | Aditi |   | Mumbai |500409  |
+------+---------+----------+---------+
2 rows in set (0.00 sec)

mysql> truncate table customer;
Query OK, 0 rows affected (0.06 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> desc customer;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| c_id    | varchar(10) | NO   | PRI | NULL    |       |
| name    | varchar(30) | NO   |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
| pincode | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> insert into customer values ('C101','Sneha','Thane',400601 ),
('C102','Annu','Badlapur',400600 );
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
| c_id | name    | city     | pincode |
+------+---------+----------+---------+
| C102 | Sneha | Thane  |  400601 |
| C103 | Annu    | Badlapur |  400600 |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> drop table customer;
Query OK, 0 rows affected (0.14 sec)

mysql> select * from customer;
ERROR 1146 (42S02): Table 'ecommerce.custommer' doesn't exist
mysql> desc customer;
ERROR 1146 (42S02): Table  'ecommerce.custommer' doesn't exist
mysql> drop database ecommerce;
Query OK, 1 row affected (0.06 sec)


mysql> create database Student_DB;
Query OK, 1 row affected (0.02 sec)

mysql> use Student_DB;
Database changed

mysql> create table student(Roll_no VARCHAR(30) primary key, Name VARCHAR(30) not null, Age INT(3) not null, Address VARCHAR(30) not null);
Query OK, 0 rows affected, 1 warning (0.07 sec)

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Roll_no | varchar(30) | NO   | PRI | NULL    |       |
| Name    | varchar(30) | NO   |     | NULL    |       |
| Age     | int         | NO   |     | NULL    |       |
| Address | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.04 sec)

mysql> INSERT INTO student (Roll_no, Name, Age, Address) VALUES('101', 'Sneha', 20, 'Thane'),('102', 'Riya', 21, 'Mumbai'),('103', 'Amit', 22, 'Pune'),('104', 'Rahul', 20, 'Nashik'), ('105', 'Priya', 21, 'Delhi');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select*from student;
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 101     | Sneha |  20 | Thane   |
| 102     | Riya  |  21 | Mumbai  |
| 103     | Amit  |  22 | Pune    |
| 104     | Rahul |  20 | Nashik  |
| 105     | Priya |  21 | Delhi   |
+---------+-------+-----+---------+
5 rows in set (0.00 sec)

mysql> select * from student where Name like 's%';
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 101     | Sneha |  20 | Thane   |
+---------+-------+-----+---------+
1 row in set (0.02 sec)

mysql> select * from student where Address like 'm%';
+---------+------+-----+---------+
| Roll_no | Name | Age | Address |
+---------+------+-----+---------+
| 102     | Riya |  21 | Mumbai  |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where Address like '%ne';
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 101     | Sneha |  20 | Thane   |
| 103     | Amit  |  22 | Pune    |
+---------+-------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student where Name like '%iy%';
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 102     | Riya  |  21 | Mumbai  |
| 105     | Priya |  21 | Delhi   |
+---------+-------+-----+---------+
2 rows in set (0.00 sec)

mysql> select * from student where Name like 'a___';
+---------+------+-----+---------+
| Roll_no | Name | Age | Address |
+---------+------+-----+---------+
| 103     | Amit |  22 | Pune    |
+---------+------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where Address like 'M___';
Empty set (0.00 sec)

mysql> select * from student where Address like 'M_____';
+---------+------+-----+---------+
| Roll_no | Name | Age | Address |
+---------+------+-----+---------+
| 102     | Riya |  21 | Mumbai  |
+---------+------+-----+---------+
1 row in set (0.00 sec)



mysql> select * from student where Address like '%N_____';
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 104     | Rahul |  20 | Nashik  |
+---------+-------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where Address like '%N_____';
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 104     | Rahul |  20 | Nashik  |
+---------+-------+-----+---------+
1 row in set (3.18 sec)

