SELECT * FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE LAST_NAME='Austin';
SELECT FIRST_NAME, LAST_NAME,SALARY FROM EMPLOYEES;
SELECT COUNT(SALARY) FROM EMPLOYEES WHERE SALARY<5000;
SELECT COUNT(SALARY) FROM EMPLOYEES WHERE SALARY BETWEEN 6000 AND 7000;
SELECT COUNT(SALARY) FROM EMPLOYEES WHERE SALARY BETWEEN 6000 AND 7000;
SELECT REGION_ID FROM COUNTRIES;
SELECT SALARY, FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME='Douglas';
SELECT MAX(SALARY) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEES);
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC ;
SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES;
SELECT * FROM EMPLOYEES WHERE SALARY>(SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES);
SELECT * FROM (SELECT * FROM EMPLOYEES WHERE SALARY>(SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES)) ORDER BY SALARY DESC ;
SELECT DEPARTMENT_NAME FROM DEPARTMENTS GROUP BY DEPARTMENT_NAME;
SELECT FIRST_NAME FROM EMPLOYEES WHERE FIRST_NAME LIKE 'Al%'; -- will start with Al , remaining is not important
SELECT * FROM EMPLOYEES WHERE JOB_ID LIKE '%IT%';
SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IN(50,80,100);  -- WILL GIVE THE DEPARTMNETS ID WITH NUMBERS 50,80,100
SELECT FIRST_NAME FN FROM EMPLOYEES; -- FIRSTNAME E FN SUTUN ADNINI VERİYORUZ.
SELECT EMPLOYEE_ID KIMLIK FROM EMPLOYEES;
SELECT FIRST_NAME||' '||LAST_NAME FROM EMPLOYEES; --TO CONCATE TWO TABLES
--   || = + TO CONCATE
SELECT FIRST_NAME||'@gmail.com' EMAIL FROM EMPLOYEES;
SELECT  UPPER(FIRST_NAME||'@gmail.com') NEW FROM EMPLOYEES;
SELECT LENGTH(FIRST_NAME)  LENGTH FROM EMPLOYEES WHERE LENGTH(FIRST_NAME)=5;

SELECT SUBSTR(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) INITIALS,
FIRST_NAME,LAST_NAME
 from EMPLOYEES;
--getting first char and last char and concate them.

SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE ROWNUM<10;
