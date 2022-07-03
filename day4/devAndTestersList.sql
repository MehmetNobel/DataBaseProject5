create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);
commit work;

SELECT * FROM TESTERS;
SELECT * FROM DEVELOPERS;

--INION : COMBINING THE TABLES VERTICALLY BY ADJUSTMENT
--WILL DO ADJUSTMENTS (WILL SORT AND AVOID DUPLICATES)
SELECT * FROM TESTERS
UNION
SELECT * FROM DEVELOPERS;

--INION ALL : COMBINING THE TABLES VERTICALLY WITHOUT ADJUSTMENT
--IT WILL KEEP ALL THE SAME AND JUST COMBINE 2 OF THEM
SELECT * FROM TESTERS
UNION ALL
SELECT * FROM DEVELOPERS;


--OR WE CAN WRITE LIKE THAT
--SELECT ID_NUMBER,NAMES,SALARY FROM TESTERS
--UNION
--SELECT ID_NUMBER,NAMES,SALARY FROM DEVELOPERS;

--IF WE WRİTE LIKE THAT THEN IT WILL JUST CARE ON NAMES ON WILL AVOID THE DUPLICATES.
SELECT NAMES FROM TESTERS
UNION
SELECT NAMES FROM DEVELOPERS;

--MINUS
--TESTERS FARK KUMESINI VERIR.SADECE TESTERDE OLANLARI GETIR DEMEK.
SELECT NAMES FROM TESTERS
MINUS
SELECT NAMES FROM DEVELOPERS;

--DEVELOPER FARK KUMESINI VERIR.SADECE DEVELOPERDAKINI GETIRIR.
SELECT NAMES FROM DEVELOPERS
MINUS
SELECT NAMES FROM TESTERS;

--INTERSECT  kesişim kumesini verir. intersection
SELECT NAMES FROM TESTERS
INTERSECT
SELECT NAMES FROM DEVELOPERS;


--how to find duplicates from the employees table MEHMET
SELECT COUNT(FIRST_NAME), FIRST_NAME FROM EMPLOYEES
GROUP BY FIRST_NAME
ORDER BY FIRST_NAME;

--how to find duplicates from the employees table JAMAL
SELECT COUNT(*), FIRST_NAME FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(*)>1;



