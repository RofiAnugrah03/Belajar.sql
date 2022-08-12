show databases;
 CREATE TABLE siswa(
    -> NIS CHAR (8) PRIMARY KEY,
    -> NAMA VARCHAR (100),
    -> JK CHAR (1),
    -> TMP_LAHIR VARCHAR(50),
    -> TGL_LAHIR DATE,
    -> Alamat TEXT,
    -> Kelas VARCHAR(10),
    -> Nilai FLOAT);
Query OK, 0 rows affected (0.344 sec)
DESCRIBE SISWA;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| NIS       | char(8)      | NO   | PRI | NULL    |       |
| NAMA      | varchar(100) | YES  |     | NULL    |       |
| JK        | char(1)      | YES  |     | NULL    |       |
| TMP_LAHIR | varchar(50)  | YES  |     | NULL    |       |
| TGL_LAHIR | date         | YES  |     | NULL    |       |
| Alamat    | text         | YES  |     | NULL    |       |
| Kelas     | varchar(10)  | YES  |     | NULL    |       |
| Nilai     | float        | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
8 rows in set (0.079 sec)
insert into siswa VALUES(
    -> '12100274',
    -> 'FIRDAUS WIGUNA',
    -> 'L',
    -> 'SUBANG',
    -> '2005-08-17',
    -> 'KALIJATI',
    -> '11-RPL-1',
    -> '70.97');
Query OK, 1 row affected (0.224 sec)
SELECT * from siswa;
+----------+----------------+------+-----------+------------+----------+----------+-------+
| NIS      | NAMA           | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat   | Kelas    | Nilai |
+----------+----------------+------+-----------+------------+----------+----------+-------+
| 12100274 | FIRDAUS WIGUNA | L    | SUBANG    | 2005-08-17 | KALIJATI | 11-RPL-1 | 70.97 |
+----------+----------------+------+-----------+------------+----------+----------+-------+
1 row in set (0.001 sec)
insert into siswa VALUES(
    -> '0066695438',
    -> 'Rofi Anugrah Firdaus',
    -> 'L',
    -> 'SUBANG',
    -> '2006-06-03',
    -> 'Surya Cigadung',
    -> '11-RPL-1',
    -> '99.99');
Query OK, 1 row affected, 1 warning (0.303 sec)
insert into siswa VALUES(
    -> '0054736275',
    -> 'Arzenna Haqi Muhammad',
    -> 'L',
    -> 'SUBANG',
    -> '2005-11-27',
    -> 'Sukamelang',
    -> '11-RPL-1',
    -> '90.99');
Query OK, 1 row affected, 1 warning (0.206 sec)
insert into siswa VALUES(
    -> '0068739168',
    -> 'Tasya Amelia',
    -> 'P',
    -> 'SUBANG',
    -> '2006-06-14',
    -> 'SUBANG',
    -> '11-RPL-1',
    -> '98.99');
    Query OK, 1 row affected, 1 warning (0.104 sec)
    insert into siswa VALUES(
    -> '0067459353',
    -> 'Wananda Dilla Zahra',
    -> 'P',
    -> 'SUBANG',
    -> '2006-01-14',
    -> 'DAWUAN',
    -> '11-RPL-1',
    -> '98.49');
Query OK, 1 row affected, 1 warning (0.118 sec)
 SELECT * FROM SISWA;
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat         | Kelas    | Nilai |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| 00547362 | Arzenna Haqi Muhammad | L    | SUBANG    | 2005-11-27 | Sukamelang     | 11-RPL-1 | 90.99 |
| 00666954 | Rofi Anugrah Firdaus  | L    | SUBANG    | 2006-06-03 | Surya Cigadung | 11-RPL-1 | 99.99 |
| 00674593 | Wananda Dilla Zahra   | P    | SUBANG    | 2006-01-14 | DAWUAN         | 11-RPL-1 | 98.49 |
| 00687391 | Tasya Amelia          | P    | SUBANG    | 2006-06-14 | SUBANG         | 11-RPL-1 | 98.99 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI       | 11-RPL-1 | 70.97 |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
5 rows in set (0.001 sec)
UPDATE siswa SET
    -> NIS="12100098"
    -> WHERE
    -> NIS="00547362";
    SELECT * FROM SISWA;
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat         | Kelas    | Nilai |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| 00666954 | Rofi Anugrah Firdaus  | L    | SUBANG    | 2006-06-03 | Surya Cigadung | 11-RPL-1 | 99.99 |
| 00674593 | Wananda Dilla Zahra   | P    | SUBANG    | 2006-01-14 | DAWUAN         | 11-RPL-1 | 98.49 |
| 00687391 | Tasya Amelia          | P    | SUBANG    | 2006-06-14 | SUBANG         | 11-RPL-1 | 98.99 |
| 12100098 | Arzenna Haqi Muhammad | L    | SUBANG    | 2005-11-27 | Sukamelang     | 11-RPL-1 | 90.99 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI       | 11-RPL-1 | 70.97 |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
5 rows in set (0.001 sec)
UPDATE siswa SET
    -> NIS="12100673"
    -> WHERE
    -> NIS="00666954";
Query OK, 1 row affected (0.074 sec)
Rows matched: 1  Changed: 1  Warnings: 0
 SELECT * FROM SISWA;
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat         | Kelas    | Nilai |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| 00674593 | Wananda Dilla Zahra   | P    | SUBANG    | 2006-01-14 | DAWUAN         | 11-RPL-1 | 98.49 |
| 00687391 | Tasya Amelia          | P    | SUBANG    | 2006-06-14 | SUBANG         | 11-RPL-1 | 98.99 |
| 12100098 | Arzenna Haqi Muhammad | L    | SUBANG    | 2005-11-27 | Sukamelang     | 11-RPL-1 | 90.99 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI       | 11-RPL-1 | 70.97 |
| 12100673 | Rofi Anugrah Firdaus  | L    | SUBANG    | 2006-06-03 | Surya Cigadung | 11-RPL-1 | 99.99 |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
5 rows in set (0.000 sec)
UPDATE siswa SET
    -> NIS="12100778"
    -> WHERE
    -> NIS="00687391";
Query OK, 1 row affected (0.085 sec)
UPDATE siswa SET
    -> NIS="12100823"
    -> WHERE
    -> NIS="00674593";
Query OK, 1 row affected (0.129 sec)
 SELECT * FROM SISWA;
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat         | Kelas    | Nilai |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| 12100098 | Arzenna Haqi Muhammad | L    | SUBANG    | 2005-11-27 | Sukamelang     | 11-RPL-1 | 90.99 |
| 12100274 | FIRDAUS WIGUNA        | L    | SUBANG    | 2005-08-17 | KALIJATI       | 11-RPL-1 | 70.97 |
| 12100673 | Rofi Anugrah Firdaus  | L    | SUBANG    | 2006-06-03 | Surya Cigadung | 11-RPL-1 | 99.99 |
| 12100778 | Tasya Amelia          | P    | SUBANG    | 2006-06-14 | SUBANG         | 11-RPL-1 | 98.99 |
| 12100823 | Wananda Dilla Zahra   | P    | SUBANG    | 2006-01-14 | DAWUAN         | 11-RPL-1 | 98.49 |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
5 rows in set (0.000 sec)
 DELETE FROM siswa WHERE NIS="12100274";
Query OK, 1 row affected (0.121 sec)
 SELECT * FROM SISWA;
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| NIS      | NAMA                  | JK   | TMP_LAHIR | TGL_LAHIR  | Alamat         | Kelas    | Nilai |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
| 12100098 | Arzenna Haqi Muhammad | L    | SUBANG    | 2005-11-27 | Sukamelang     | 11-RPL-1 | 90.99 |
| 12100673 | Rofi Anugrah Firdaus  | L    | SUBANG    | 2006-06-03 | Surya Cigadung | 11-RPL-1 | 99.99 |
| 12100778 | Tasya Amelia          | P    | SUBANG    | 2006-06-14 | SUBANG         | 11-RPL-1 | 98.99 |
| 12100823 | Wananda Dilla Zahra   | P    | SUBANG    | 2006-01-14 | DAWUAN         | 11-RPL-1 | 98.49 |
+----------+-----------------------+------+-----------+------------+----------------+----------+-------+
4 rows in set (0.001 sec)
