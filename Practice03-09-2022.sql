select * from dual;
============================== 
Create table student (Sno number constraint Sno_NN NOT NULL);-- duplicate are allowedd
desc student;
select *  from student ;
insert into student(J_Date) values('');
drop table student;

Create table student1 (Sno1 number constraint Sno1_NN UNIQUE);-- NULL VALUE are allowedd
--Create table student (Sno number, Name varchar2(100), constraint Sno_NM_UNQ UNIQUE (Sno, Name));
 Create table student (Sno number, J_Date NUMBER DEFAULT 100);
--Create table student (Sno number constraint Sno_PK PRIMARY KEY 
--CHECK (Sno between 10 and 50), Location varchar2(50) 
--DEFAULT ‘HYDERABAD’
--CHECK Location in(‘HYDERABAD’,’GUNTUR’,’VIJAYAWADA’));
drop table student;
create table teacher(TID NUMBER,TNAME VARCHAR2(20)UNIQUE ,BRANCH VARCHAR2(3) NOT NULL);
ALTER TABLE TEACHER ADD CONSTRAINT TK_PK PRIMARY KEY (TID);
DESC TEACHER;
INSERT INTO TEACHER VALUES(2,'PANDU','IT');
SELECT * FROM TEACHER;
CREATE TABLE STUDENT(STNO NUMBER,STUNAME VARCHAR2(20),BRANCHNAME VARCHAR2(3));
ALTER TABLE STUDENT MODIFY STUNAME CONSTRAINT ST_NN NOT NULL;
ALTER TABLE STUDENT MODIFY BRANCHNAME  DEFAULT 'IT';
ALTER TABLE STUDENT ADD CONSTRAINT ST_FK FOREIGN KEY (STNO) REFERENCES TEACHER(TID) ON DELETE SET NULL;  
DROP TABLE STUDENT;
DESC STUDENT;
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT';
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='TEACHER';
SELECT * FROM TEACHER;
INSERT INTO STUDENT VALUES(3,'ELEPHnt','ECE');
SELECT T.TID,T.TNAME,T.BRANCH,S.STUNAME,S.BRANCHNAME FROM TEACHER T INNER JOIN STUDENT S T.TID=S.STNO; 
SELECT * FROM TEACHER ;
DELETE FROM TEACHER WHERE TID=3;
SELECT * FROM STUDENT;
select * from teacher t,student s where t.tid=s.stno; ---equi join eqality condition 
select * from teacher t inner join student s on (t.tid=s.stno);---on cluase use chestham  same as equi join 

select * from emp,dept;
select * from teacher,student;
select * from emp cross join dept;
select * from teacher cross join student;
select * from teacher t left join student s on t.tid=s.stno;
--select * from emp e left join dept on 
select * from teacher natural join student ;
select * from teacher join student using(tid);

commit;
