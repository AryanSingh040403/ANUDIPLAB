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
9 rows in set (0.09 sec)

mysql> use student_db;
Database changed
mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Roll_no | varchar(30) | NO   | PRI | NULL    |       |
| Name    | varchar(30) | NO   |     | NULL    |       |
| Age     | int         | NO   |     | NULL    |       |
| Address | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> select* from student;
+---------+-------+-----+---------+
| Roll_no | Name  | Age | Address |
+---------+-------+-----+---------+
| 101     | Sneha |  20 | Thane   |
| 102     | Riya  |  21 | Mumbai  |
| 103     | Amit  |  22 | Pune    |
| 104     | Rahul |  20 | Nashik  |
| 105     | Priya |  21 | Delhi   |
+---------+-------+-----+---------+
5 rows in set (0.01 sec)

mysql> alter table student add Email VARCHAR(30) not null;
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Roll_no | varchar(30) | NO   | PRI | NULL    |       |
| Name    | varchar(30) | NO   |     | NULL    |       |
| Age     | int         | NO   |     | NULL    |       |
| Address | varchar(30) | NO   |     | NULL    |       |
| Email   | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table student modify Name VARCHAR(25) not null;
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| Roll_no | varchar(30) | NO   | PRI | NULL    |       |
| Name    | varchar(25) | NO   |     | NULL    |       |
| Age     | int         | NO   |     | NULL    |       |
| Address | varchar(30) | NO   |     | NULL    |       |
| Email   | varchar(30) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student rename column Name to Full_Name;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
| Email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table student modify age VARCHAR(25) not null;
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| Age       |  varchar(25)  | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
| Email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table student modify age INT not null;
Query OK, 5 rows affected (0.08 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
| Email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> alter table student rename to student_details;
Query OK, 0 rows affected (0.03 sec)

mysql> desc student;
ERROR 1146 (42S02): Table 'student_db.student' doesn't exist
mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
| Email     | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> alter table student_details drop column email;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> alter table student_details drop primary key;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   |     | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> alter table student_details add primary key(roll_no);
Query OK, 0 rows affected (0.13 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc student_details;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Roll_no   | varchar(30) | NO   | PRI | NULL    |       |
| Full_Name | varchar(25) | NO   |     | NULL    |       |
| age       | int         | NO   |     | NULL    |       |
| Address   | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> create table department(Dept_Id varchar(30) Primary Key,Dept_Name varchar(30) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Dept_Id   | varchar(30) | NO   | PRI | NULL    |       |
| Dept_Name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> create table employee(Emp_Id varchar(30) Primary Key,Emp_Name varchar(30) not null, Dept_ID varchar(30), foreign key(Dept_ID) references department(Dept_ID));
Query OK, 0 rows affected (0.04 sec)

mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| Dept_Id   | varchar(30) | NO   | PRI | NULL    |       |
| Dept_Name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| Emp_Id   | varchar(30) | NO   | PRI | NULL    |       |
| Emp_Name | varchar(30) | NO   |     | NULL    |       |
| Dept_ID  | varchar(30) | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into department values('D101','HR'),('D102','IT');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------+-----------+
| Dept_Id | Dept_Name |
+---------+-----------+
| D101    | HR        |
| D102    | IT        |
+---------+-----------+
2 rows in set (0.00 sec)

mysql> insert into employee values('E101','Sneha','D102'),('E102','Samarth','D102'),('E103','Aditi','D101');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+--------+----------+---------+
| Emp_Id | Emp_Name | Dept_ID |
+--------+----------+---------+
| E101   | Sneha    | D102    |
| E102   | Samarth  | D102    |
| E103   | Aditi    | D101    |
+--------+----------+---------+
3 rows in set (0.00 sec)

mysql> select * from student_details limit 2;
+---------+-----------+-----+---------+
| Roll_no | Full_Name | age | Address |
+---------+-----------+-----+---------+
| 101     | Sneha     |  20 | Thane   |
| 102     | Riya      |  21 | Mumbai  |
+---------+-----------+-----+---------+
2 rows in set (0.01 sec)
