mysql> create database joins;
Query OK, 1 row affected (0.03 sec)

mysql> use joins;
Database changed
mysql> create table departement(dept_id int(5) primary key, dept_name varchar(13) not null);
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> desc depatement;
ERROR 1146 (42S02): Table 'joins.depatement' doesn't exist
mysql> desc  departement;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(13) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into  departement values(1, "HR"),(2,"IT"),(3,"finance"),(4, "marketing");
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from  departement;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | finance   |
|       4 | marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> create table employees(emp_id int(5) primary key, emp_name varchar(30) not null, dept_id int, foreign key (dept_id) references  departement(dept_id));
Query OK, 0 rows affected, 1 warning (0.04 sec)

mysql> desc employees;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(30) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into employees values(1,"mukhtar",1),(2,"ram",2),(3,"ritik",1),(4,"raju",null),(5,"priya",4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select *from  departement;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | finance   |
|       4 | marketing |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> select * from employees;
+--------+----------+---------+
| emp_id | emp_name | dept_id |
+--------+----------+---------+
|      1 | mukhtar  |       1 |
|      2 | ram      |       2 |
|      3 | ritik    |       1 |
|      4 | raju     |    NULL |
|      5 | priya    |       4 |
+--------+----------+---------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employees inner join departement on employees.dept_id = departement.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| mukhtar  | HR        |
| ritik    | HR        |
| ram      | IT        |
| priya    | marketing |
+----------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employees left join departement on employees.dept_id = departement.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| mukhtar  | HR        |
| ram      | IT        |
| ritik    | HR        |
| raju     | NULL      |
| priya    | marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employees right join departement on employees.dept_id = departement.dept_id;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| mukhtar  | HR        |
| ritik    | HR        |
| ram      | IT        |
| NULL     | finance   |
| priya    | marketing |
+----------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name,dept_name from employees full join departement;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| mukhtar  | marketing |
| mukhtar  | finance   |
| mukhtar  | IT        |
| mukhtar  | HR        |
| ram      | marketing |
| ram      | finance   |
| ram      | IT        |
| ram      | HR        |
| ritik    | marketing |
| ritik    | finance   |
| ritik    | IT        |
| ritik    | HR        |
| raju     | marketing |
| raju     | finance   |
| raju     | IT        |
| raju     | HR        |
| priya    | marketing |
| priya    | finance   |
| priya    | IT        |
| priya    | HR        |
+----------+-----------+
20 rows in set, 1 warning (0.00 sec)

mysql> select emp_name,dept_name from employees cross join departement ;
+----------+-----------+
| emp_name | dept_name |
+----------+-----------+
| mukhtar  | marketing |
| mukhtar  | finance   |
| mukhtar  | IT        |
| mukhtar  | HR        |
| ram      | marketing |
| ram      | finance   |
| ram      | IT        |
| ram      | HR        |
| ritik    | marketing |
| ritik    | finance   |
| ritik    | IT        |
| ritik    | HR        |
| raju     | marketing |
| raju     | finance   |
| raju     | IT        |
| raju     | HR        |
| priya    | marketing |
| priya    | finance   |
| priya    | IT        |
| priya    | HR        |
+----------+-----------+
20 rows in set (0.00 sec)
