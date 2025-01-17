--Use Assigment1;

--select * from DEPT;
--select * from EMP;
--select * from SALGRADE;


CREATE PROCEDURE SP_C_EMP_D
AS
BEGIN
    
    SELECT DNAME, COUNT(EMPNO) AS EmployeeCount
    FROM DEPT
    LEFT JOIN EMP  ON EMP.DEPTNO = DEPT.DEPTNO
    GROUP BY DNAME
    ORDER BY DNAME
END


EXEC SP_C_EMP_D;



create procedure SP_EMPID
@EMPID int
AS
BEGIN
select * from EMP where EMPNO=@EMPID
END

EXEC SP_EMPID  @EMPID=7369;



-- Check data type of DEPTNO in DEPT table
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'DEPT' AND COLUMN_NAME = 'DEPTNO';

-- Check data type of DEPTNO in EMP table
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'EMP' AND COLUMN_NAME = 'DEPTNO';



Alter table EMP 
ALter column DEPTNO INT;


ALTER TABLE EMP
ADD CONSTRAINT FK_EMP_DEPT FOREIGN KEY (DEPTNO) REFERENCES DEPT (DEPTNO);






Alter table SALGRADE 

Alter column GRADE int not null;


Alter table SALGRADE 

ADD CONSTRAINT PK_SALGRADE PRIMARY KEY (GRADE);

select * from SALGRADE;