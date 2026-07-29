mysql> CREATE TABLE BANKACCOUNT (ACCOUNT_ID INT(10) PRIMARY KEY ,ACCOUNT_HOLDER_NAME VARCHAR(25),ACCOUNT_BALANCE INT(25));
Query OK, 0 rows affected, 2 warnings (0.11 sec)

mysql> DESC BANKACCOUNT;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| ACCOUNT_ID          | int         | NO   | PRI | NULL    |       |
| ACCOUNT_HOLDER_NAME | varchar(25) | YES  |     | NULL    |       |
| ACCOUNT_BALANCE     | int         | YES  |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (0.03 sec)

mysql> INSERT INTO BANKACCOUNT VALUES (1001,'ABC',50000),(1002,'ROBERT',45000),(1003,'ALICE',30000),(1004,'EMILY',47000),(1005,'XYZ',25000);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT ACCOUNT_HOLDER_NAME,ACCOUNT_BALANCE FROM BANKACCOUNT;
+---------------------+-----------------+
| ACCOUNT_HOLDER_NAME | ACCOUNT_BALANCE |
+---------------------+-----------------+
| ABC                 |           50000 |
| ROBERT              |           45000 |
| ALICE               |           30000 |
| EMILY               |           47000 |
| XYZ                 |           25000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> SELECT ACCOUNT_HOLDER_NAME,ACCOUNT_BALANCE FROM BANKACCOUNT WHERE ACCOUNT_BALANCE >30000;
+---------------------+-----------------+
| ACCOUNT_HOLDER_NAME | ACCOUNT_BALANCE |
+---------------------+-----------------+
| ABC                 |           50000 |
| ROBERT              |           45000 |
| EMILY               |           47000 |
+---------------------+-----------------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM BANKACCOUNT;
+------------+---------------------+-----------------+
| ACCOUNT_ID | ACCOUNT_HOLDER_NAME | ACCOUNT_BALANCE |
+------------+---------------------+-----------------+
|       1001 | ABC                 |           50000 |
|       1002 | ROBERT              |           45000 |
|       1003 | ALICE               |           30000 |
|       1004 | EMILY               |           47000 |
|       1005 | XYZ                 |           25000 |
+------------+---------------------+-----------------+
5 rows in set (0.02 sec)

mysql> UPADTE BANKACCOUNT SET ACCOUNT_BALANCE = 60000 WHERE ACCOUNT_ID = 1001;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'UPADTE BANKACCOUNT SET ACCOUNT_BALANCE = 60000 WHERE ACCOUNT_ID = 1001' at line 1
mysql> UPDATE BANKACCOUNT SET ACCOUNT_BALANCE = 60000 WHERE ACCOUNT_ID = 1001;
Query OK, 1 row affected (0.04 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM BANKACCOUNT;
+------------+---------------------+-----------------+
| ACCOUNT_ID | ACCOUNT_HOLDER_NAME | ACCOUNT_BALANCE |
+------------+---------------------+-----------------+
|       1001 | ABC                 |           60000 |
|       1002 | ROBERT              |           45000 |
|       1003 | ALICE               |           30000 |
|       1004 | EMILY               |           47000 |
|       1005 | XYZ                 |           25000 |
+------------+---------------------+-----------------+
5 rows in set (0.03 sec)

mysql>save the chat save the chat 
