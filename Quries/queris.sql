suraj=> \connect suraj;                                                                                                                                                   
Password:
psql (15.0 (Debian 15.0-1.pgdg110+1), server 14.4)
SSL connection (protocol: TLSv1.3, cipher: TLS_AES_256_GCM_SHA384, compression: off)
You are now connected to database "suraj" as user "suraj".
suraj=> create table Students(
suraj(> id serial primary key,
suraj(> name varchar(30) not null,
suraj(> class int not null);
CREATE TABLE
suraj=> \dt
         List of relations
 Schema |   Name   | Type  | Owner
--------+----------+-------+-------
 public | students | table | suraj
(1 row)

suraj=> INSERT INTO Students(name,class)values('ram',5);
INSERT 0 1
suraj=> INSERT INTO Students(name,class)values('laxman',2);
INSERT 0 1
suraj=> INSERT INTO Students(name,class)values('shiv',7);
INSERT 0 1

suraj=> select * from Students;
 id |  name  | class
----+--------+-------
  1 | ram    |     5
  2 | laxman |     2
  3 | shiv   |     7
(3 rows)

suraj=> DELETE from Students where id=2;
DELETE 1
suraj=> select * from students;
 id | name | class
----+------+-------
  1 | ram  |     5
  3 | shiv |     7
(2 rows)

suraj=> UPDATE students SET name='pavan',class=6 where id=3;
UPDATE 1
suraj=> select * from students;
 id | name  | class
----+-------+-------
  1 | ram   |     5
  3 | pavan |     6
(2 rows)

suraj=>
