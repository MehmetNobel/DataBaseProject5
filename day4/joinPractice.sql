SELECT FIRST_NAME, LAST_NAME,PHONE_NUMBER,EMPLOYEES.DEPARTMENT_ID
FROM EMPLOYEES JOIN DEPARTMENTS
ON EMPLOYEES.DEPARTMENT_ID = DEPARTMENTS.DEPARTMENT_ID;

SELECT FIRST_NAME, LAST_NAME, EMPLOYEE_ID
FROM EMPLOYEES JOIN DEPARTMENTS
ON EMPLOYEES.EMPLOYEE_ID = DEPARTMENTS.MANAGER_ID;

--it will check one by one then give the result
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,EMPLOYEE_ID
FROM EMPLOYEES LEFT JOIN DEPARTMENTS D
on EMPLOYEES.EMPLOYEE_ID = D.MANAGER_ID
WHERE EMPLOYEE_ID IS NOT NULL ;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,E.DEPARTMENT_ID, D.DEPARTMENT_ID
FROM EMPLOYEES E FULL JOIN DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
WHERE E.DEPARTMENT_ID IS NOT NULL ;

SELECT FIRST_NAME, city, LAST_NAME, DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON E.DEPARTMENT_ID = D.DEPARTMENT_ID
JOIN LOCATIONS L
ON D.LOCATION_ID = L.LOCATION_ID;
