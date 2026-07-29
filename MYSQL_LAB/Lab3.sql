-- Purpose: Create and select the database for the student management system
mysql> create database student_management_system;
Query OK, 1 row affected (0.02 sec)

mysql> use student_management_system;
Database changed

-- Purpose: Create the student table to store personal details
mysql> create table student(std_id varchar(10) primary key not null, first_name varchar(30) not null, last_name varchar(20) not null, DOB  date not null);
Query OK, 0 rows affected (0.06 sec)

-- Purpose: Create the enrollment table to track student courses with a foreign key relation
mysql> create table enrollment (en_id varchar(20) not null, std_id varchar(10) primary key not null, course_id varchar(20) not null, en_date date not null, foreign key (std_id) references student(std_id));
Query OK, 0 rows affected (0.04 sec)


mysql> show tables;
+-------------------------------------+
| Tables_in_student_management_system |
+-------------------------------------+
| enrollment                          |
| student                             |
+-------------------------------------+
2 rows in set (0.06 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| std_id     | varchar(10) | NO   | PRI | NULL    |       |
| first_name | varchar(30) | NO   |     | NULL    |       |
| last_name  | varchar(20) | NO   |     | NULL    |       |
| DOB        | date        | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)


-- Purpose: Insert sample student records into the student table
mysql> insert into student values('AF101','Deep','Shah','2003-05-05'),('AF102','Shashibhushan','Ram','2004-04-16'),('AF103','Nikhil','Singh','2005-06-25'),('AF104','Riya','Pandey','2006-05-26'),('AF105','Anshika','Gupta','2006-10-03');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from student;
+--------+---------------+-----------+------------+
| std_id | first_name    | last_name | DOB        |
+--------+---------------+-----------+------------+
| AF101  | Deep          | Shah      | 2003-05-05 |
| AF102  | Shashibhushan | Ram       | 2004-04-16 |
| AF103  | Nikhil        | Singh     | 2005-06-25 |
| AF104  | Riya          | Pandey    | 2006-05-26 |
| AF105  | Anshika       | Gupta     | 2006-10-03 |
+--------+---------------+-----------+------------+
5 rows in set (0.00 sec)

mysql> desc enrollment;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| en_id     | varchar(20) | NO   |     | NULL    |       |
| std_id    | varchar(10) | NO   | PRI | NULL    |       |
| course_id | varchar(20) | NO   |     | NULL    |       |
| en_date   | date        | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

-- Purpose: Insert sample enrollment records into the enrollment table
mysql> insert into enrollment values ('EF101','AF101','CF156','2025-05-26'),('EF102','AF102','CF324','2025-06-15'),('EF103','AF103','CF756','2025-03-25'),('EF104','AF104','CF654','2025-05-17'),('EF105','AF105','CF637','2025-05-19');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from enrollment;
+-------+--------+-----------+------------+
| en_id | std_id | course_id | en_date    |
+-------+--------+-----------+------------+
| EF101 | AF101  | CF156     | 2025-05-26 |
| EF102 | AF102  | CF324     | 2025-06-15 |
| EF103 | AF103  | CF756     | 2025-03-25 |
| EF104 | AF104  | CF654     | 2025-05-17 |
| EF105 | AF105  | CF637     | 2025-05-19 |
+-------+--------+-----------+------------+
5 rows in set (0.00 sec)


-- Purpose: Retrieve student ID, first name, last name, enrollment ID, and course ID using an INNER JOIN (Main Lab Task)
mysql> select student.std_id, student.first_name, student.last_name, enrollment.en_id, enrollment.course_id from student inner join enrollment on student.std_id = enrollment.std_id;
+--------+---------------+-----------+-------+-----------+
| std_id | first_name    | last_name | en_id | course_id |
+--------+---------------+-----------+-------+-----------+
| AF101  | Deep          | Shah      | EF101 | CF156     |
| AF102  | Shashibhushan | Ram       | EF102 | CF324     |
| AF103  | Nikhil        | Singh     | EF103 | CF756     |
| AF104  | Riya          | Pandey    | EF104 | CF654     |
| AF105  | Anshika       | Gupta     | EF105 | CF637     |
+--------+---------------+-----------+-------+-----------+
5 rows in set (0.00 sec)

-- Purpose: Retrieve data using a RIGHT JOIN
mysql> select student.std_id, student.first_name, student.last_name, enrollment.course_id from student right join enrollment on student.std_id = enrollment.std_id;
+--------+---------------+-----------+-----------+
| std_id | first_name    | last_name | course_id |
+--------+---------------+-----------+-----------+
| AF101  | Deep          | Shah      | CF156     |
| AF102  | Shashibhushan | Ram       | CF324     |
| AF103  | Nikhil        | Singh     | CF756     |
| AF104  | Riya          | Pandey    | CF654     |
| AF105  | Anshika       | Gupta     | CF637     |
+--------+---------------+-----------+-----------+
5 rows in set (0.00 sec)



-- Purpose: Retrieve data using a LEFT JOIN
mysql> select student.std_id, student.first_name, student.last_name, enrollment.course_id from student left join enrollment on student.std_id = enrollment.std_id;
+--------+---------------+-----------+-----------+
| std_id | first_name    | last_name | course_id |
+--------+---------------+-----------+-----------+
| AF101  | Deep          | Shah      | CF156     |
| AF102  | Shashibhushan | Ram       | CF324     |
| AF103  | Nikhil        | Singh     | CF756     |
| AF104  | Riya          | Pandey    | CF654     |
| AF105  | Anshika       | Gupta     | CF637     |
+--------+---------------+-----------+-----------+
5 rows in set (0.00 sec)


-- Purpose: Retrieve data using a FULL OUTER JOIN (simulated with UNION)
mysql> select student.std_id, student.first_name, student.last_name, enrollment.course_id, enrollment.en_date from student left join enrollment on student.std_id = enrollment.std_id union select student.std_id,student.first_name, student.last_name, enrollment.course_id, enrollment.en_date from student right join enrollment on student.std_id= enrollment.std_id;
+--------+---------------+-----------+-----------+------------+
| std_id | first_name    | last_name | course_id | en_date    |
+--------+---------------+-----------+-----------+------------+
| AF101  | Deep          | Shah      | CF156     | 2025-05-26 |
| AF102  | Shashibhushan | Ram       | CF324     | 2025-06-15 |
| AF103  | Nikhil        | Singh     | CF756     | 2025-03-25 |
| AF104  | Riya          | Pandey    | CF654     | 2025-05-17 |
| AF105  | Anshika       | Gupta     | CF637     | 2025-05-19 |
+--------+---------------+-----------+-----------+------------+
5 rows in set (0.01 sec)


-- Purpose: Retrieve data using a CROSS JOIN
mysql> select student.std_id, student.first_name, student.last_name , enrollment.course_id from student  cross join enrollment;
+--------+---------------+-----------+-----------+
| std_id | first_name    | last_name | course_id |
+--------+---------------+-----------+-----------+
| AF105  | Anshika       | Gupta     | CF156     |
| AF104  | Riya          | Pandey    | CF156     |
| AF103  | Nikhil        | Singh     | CF156     |
| AF102  | Shashibhushan | Ram       | CF156     |
| AF101  | Deep          | Shah      | CF156     |
| AF105  | Anshika       | Gupta     | CF324     |
| AF104  | Riya          | Pandey    | CF324     |
| AF103  | Nikhil        | Singh     | CF324     |
| AF102  | Shashibhushan | Ram       | CF324     |
| AF101  | Deep          | Shah      | CF324     |
| AF105  | Anshika       | Gupta     | CF756     |
| AF104  | Riya          | Pandey    | CF756     |
| AF103  | Nikhil        | Singh     | CF756     |
| AF102  | Shashibhushan | Ram       | CF756     |
| AF101  | Deep          | Shah      | CF756     |
| AF105  | Anshika       | Gupta     | CF654     |
| AF104  | Riya          | Pandey    | CF654     |
| AF103  | Nikhil        | Singh     | CF654     |
| AF102  | Shashibhushan | Ram       | CF654     |
| AF101  | Deep          | Shah      | CF654     |
| AF105  | Anshika       | Gupta     | CF637     |
| AF104  | Riya          | Pandey    | CF637     |
| AF103  | Nikhil        | Singh     | CF637     |
| AF102  | Shashibhushan | Ram       | CF637     |
| AF101  | Deep          | Shah      | CF637     |
+--------+---------------+-----------+-----------+