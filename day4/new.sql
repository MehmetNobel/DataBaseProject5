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

