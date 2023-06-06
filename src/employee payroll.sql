Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 9
Server version: 8.0.33 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook_db     |
| college_db         |
| erdb               |
| information_schema |
| mysql              |
| performance_schema |
| stu_details        |
| studb              |
| studentdb          |
| studentdb1         |
| studentsdb         |
+--------------------+
11 rows in set (0.09 sec)

mysql> CREATE DATABASE employeepayroll_db;
Query OK, 1 row affected (1.98 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| addressbook_db     |
| college_db         |
| employeepayroll_db |
| erdb               |
| information_schema |
| mysql              |
| performance_schema |
| stu_details        |
| studb              |
| studentdb          |
| studentdb1         |
| studentsdb         |
+--------------------+
12 rows in set (0.00 sec)

mysql> USE employeepayroll_db;
Database changed
mysql> SELECT DATABASE();
+--------------------+
| DATABASE()         |
+--------------------+
| employeepayroll_db |
+--------------------+
1 row in set (0.00 sec)

mysql> CREATE TABLE employee_payroll;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE employee_payroll
    -> id    INT unsigned NOT NULL AUTO_INCREMENT,
    -> name  VARCHAR(100) NOT NULL,
    -> salary Double NOT NULL,
    -> start   DATE NOT NULL,
    -> PRIMARY KEY (id),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'id    INT unsigned NOT NULL AUTO_INCREMENT,
name  VARCHAR(100) NOT NULL,
salary ' at line 2
mysql> CREATE TABLE employee_payroll;
ERROR 4028 (HY000): A table must have at least one visible column.
mysql> CREATE TABLE employee_payroll
    -> (
    ->  id    INT unsigned NOT NULL AUTO_INCREMENT,
    ->     -> name  VARCHAR(100) NOT NULL,
    ->     -> salary Double NOT NULL,
    ->     -> start   DATE NOT NULL,
    ->     -> PRIMARY KEY (id),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-> name  VARCHAR(100) NOT NULL,
    -> salary Double NOT NULL,
    -> start   DA' at line 4
mysql> CREATE TABLE employee_payroll
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    ->
    -> CREATE TABLE employee_payroll
    -> (
    -> id       INT unsigned NOT NULL AUTO_INCREMENT
    -> name     VARCHAR(100) NOT NULL,
    -> salary   Double NOT NULL,
    -> start    DATE NOT NULL,
    -> Primary KEY  (id),
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE employee_payroll
(
id       INT unsigned NOT NULL AUTO_INCREMENT
na' at line 12
mysql> create table employee_details(id int(10),name VARCHAR(100),salary int(15),start Date);
Query OK, 0 rows affected, 2 warnings (0.04 sec)

mysql> desc employee_details;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int          | YES  |     | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| salary | int          | YES  |     | NULL    |       |
| start  | date         | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
4 rows in set (0.02 sec)

mysql> insert into employee_payroll values(1,'Aditya',3500000,'2018-1-03');
ERROR 1146 (42S02): Table 'employeepayroll_db.employee_payroll' doesn't exist
mysql> insert into employee_payroll values(1,'Aditya',3500000,'2018-1-03');
ERROR 1146 (42S02): Table 'employeepayroll_db.employee_payroll' doesn't exist
mysql> insert into employee_details values(1,'Aditya',3500000,'2018-1-03');
Query OK, 1 row affected (0.02 sec)

mysql> insert into employee_details values(2,'Nitish',5000000,'2018-4-03');
Query OK, 1 row affected (0.00 sec)

mysql> insert into employee_details values(3,'Abhinav',2000000,'2018-11-07');
Query OK, 1 row affected (0.00 sec)

mysql> SELECT * employee_details;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee_details' at line 1
mysql> SELECT * FROM  employee_details;
+------+---------+---------+------------+
| id   | name    | salary  | start      |
+------+---------+---------+------------+
|    1 | Aditya  | 3500000 | 2018-01-03 |
|    2 | Nitish  | 5000000 | 2018-04-03 |
|    3 | Abhinav | 2000000 | 2018-11-07 |
+------+---------+---------+------------+
3 rows in set (0.00 sec)

mysql> SELECT salary FROM employee_details WHERE name = 'Aditya';
+---------+
| salary  |
+---------+
| 3500000 |
+---------+
1 row in set (0.00 sec)

mysql> WHERE start BETWEEN CAST(2018-01-03 'AS DATE) AND DATE (NOW());
    '>
    '>
    '> WHERE start BETWEEN CAST(2018-01-03 'AS DATE) AND DATE (NOW());
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'WHERE start BETWEEN CAST(2018-01-03 'AS DATE) AND DATE (NOW());


WHERE start BE' at line 1
mysql> ALTER TABLE employee_details ADD gender CHAR (1) AFTER name;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> describe employee_details;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int          | YES  |     | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| gender | char(1)      | YES  |     | NULL    |       |
| salary | int          | YES  |     | NULL    |       |
| start  | date         | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> update employee_details set gender = 'M' where name ='Aditya' or name = 'Abhinav' or name = 'Nitish';
Query OK, 3 rows affected (0.01 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> describe employee_details;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int          | YES  |     | NULL    |       |
| name   | varchar(100) | YES  |     | NULL    |       |
| gender | char(1)      | YES  |     | NULL    |       |
| salary | int          | YES  |     | NULL    |       |
| start  | date         | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM  employee_details;
+------+---------+--------+---------+------------+
| id   | name    | gender | salary  | start      |
+------+---------+--------+---------+------------+
|    1 | Aditya  | M      | 3500000 | 2018-01-03 |
|    2 | Nitish  | M      | 5000000 | 2018-04-03 |
|    3 | Abhinav | M      | 2000000 | 2018-11-07 |
+------+---------+--------+---------+------------+
3 rows in set (0.00 sec)

mysql> update employee_details set salary ='10000000' where name = 'Nitish';
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM  employee_details;
+------+---------+--------+----------+------------+
| id   | name    | gender | salary   | start      |
+------+---------+--------+----------+------------+
|    1 | Aditya  | M      |  3500000 | 2018-01-03 |
|    2 | Nitish  | M      | 10000000 | 2018-04-03 |
|    3 | Abhinav | M      |  2000000 | 2018-11-07 |
+------+---------+--------+----------+------------+
3 rows in set (0.00 sec)

mysql> SELECT AVG(salary) FROM employee_details WHERE gender ='M' GROUP BY gender;
+--------------+
| AVG(salary)  |
+--------------+
| 5166666.6667 |
+--------------+
1 row in set (0.01 sec)

mysql> SELECT gender,AVG(salary) FROM employee_details GROUP BY gender;
+--------+--------------+
| gender | AVG(salary)  |
+--------+--------------+
| M      | 5166666.6667 |
+--------+--------------+
1 row in set (0.00 sec)

mysql> SELECT gender,COUNT(name) FROM employee_details GROUP BY gender;
+--------+-------------+
| gender | COUNT(name) |
+--------+-------------+
| M      |           3 |
+--------+-------------+
1 row in set (0.00 sec)

mysql> SELECT gender,SUM(name) FROM employee_details GROUP BY gender;
+--------+-----------+
| gender | SUM(name) |
+--------+-----------+
| M      |         0 |
+--------+-----------+
1 row in set, 3 warnings (0.00 sec)

mysql> SELECT gender,SUM(salary) FROM employee_details GROUP BY gender;
+--------+-------------+
| gender | SUM(salary) |
+--------+-------------+
| M      |    15500000 |
+--------+-------------+
1 row in set (0.00 sec)

mysql>