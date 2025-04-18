select * from emp;
select ename, sal from emp;
select ename, sal from emp where deptno = 10;
select ename, sal from emp where sal >= 3000;
select ename, hiredate from emp where job = 'MANAGER';
select ename, sal from emp where sal between 1000 and 3000;
select * from emp where sal <= 2000 or comm >= 500;
select * from emp where ename like 'A%';
select ename, comm from emp where comm is not null;
select * from emp where job = 'SALESMAN';
select * from dept;
select sal + sal * (10 / 100.0) from emp;
select * from emp order by hiredate asc;
select * from emp order by sal desc;

+-------+--------+-----------+------+---------------------+------+------+--------+
| empno | ename  | job       | mgr  | hiredate            | sal  | comm | deptno |
+-------+--------+-----------+------+---------------------+------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 00:00:00 |  800 | NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 00:00:00 | 1600 |  300 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 00:00:00 | 1250 |  500 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 00:00:00 | 2975 | NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 00:00:00 | 1250 | 1400 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 00:00:00 | 2850 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 00:00:00 | 2450 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1987-04-19 00:00:00 | 3000 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 00:00:00 | 5000 | NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 00:00:00 | 1500 |    0 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1987-05-23 00:00:00 | 1100 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 00:00:00 |  950 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 00:00:00 | 3000 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 00:00:00 | 1300 | NULL |     10 |
+-------+--------+-----------+------+---------------------+------+------+--------+

[DML - 데이터 조작과 관련된 쿼리: 추가/삭제/변경]

테이블 복사하기
create table emp2 as select * from emp;

레코드 1건 넣기(insert into)
insert into dept2(deptno, dname, loc) values(50, 'secret', 'seoul');
insert into dept2(deptno, dname) values(60, 'babo');

레코드 1건 삭제(delete)
delete from emp2 where sal <= 800;
delete from emp2 where deptno = 10;

레코드 수정(update)
update emp2 set job = '분석' where empno = 7788;

[DDL - 존재와 관련된 쿼리: 생성/소멸/변경]
drop table emp2;

[DML 기본 문제]
update dept2 set dname = '세일즈' where deptno=30;
update emp2 set sal = 3500 where ename='WARD';
update emp2 set sal = 9000, comm = 5000, ename='회장' where empno = 7839;
delete from emp2 where sal < 1000;