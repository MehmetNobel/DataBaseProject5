CREATE TABLE address_MN(
                        address_id Integer PRIMARY KEY,
                        address VARCHAR(50) NOT NULL,
                        phone Integer NOT NULL
);
INSERT INTO address_MN (address_id, address, phone) VALUES (5,  '1913 Hanoi Way'  ,
                                                         28303384);
INSERT INTO address_MN (address_id, address, phone) VALUES (7,  '692 Joliet Street'  ,
                                                         44847719);
INSERT INTO address_MN(address_id, address, phone) VALUES (8,  '1566 Inegl Manor'  ,
                                                         70581400);
INSERT INTO address_MN (address_id, address, phone) VALUES (10,  '1795 Santiago '  ,
                                                         86045262);
INSERT INTO address_MN (address_id, address, phone) VALUES (11,  '900 Santiago '  ,
                                                         16571220);
CREATE TABLE customer_MN(
                         customer_id Integer PRIMARY KEY,
                         first_name VARCHAR(50) NOT NULL,
                         last_name VARCHAR(50)NOT NULL,
                         address_id Integer REFERENCES address_MN(address_id)
);
INSERT INTO customer_MN (customer_id, first_name, last_name, address_id) VALUES (1,
                                                                              'Mary' ,  'Smith',  5);
INSERT INTO customer_MN (customer_id, first_name, last_name, address_id) VALUES (2,
                                                                              'Patricia' ,  'Johnson' ,  NULl);
INSERT INTO customer_MN (customer_id, first_name, last_name, address_id) VALUES (3,
                                                                              'Linda' ,  'Williams' ,  7);
INSERT INTO customer_MN (customer_id, first_name, last_name, address_id) VALUES (4,
                                                                              'Barbara' ,  'Jones' , 8);
INSERT INTO customer_MN (customer_id, first_name, last_name, address_id) VALUES (5,
                                                                              'Elizabeth' ,  'Brown' ,  NULL);
commit work;

SELECT * FROM customer_MN;
select first_name,last_name,c.address_id,address,phone
--customer_MN as c => customer_MN nin ismini c olarak değiştirebiliriz bu şekilde.kısa yolu aşağıdaki gibi as demeden.
from customer_MN c left join address_MN a
--left join gives the all the columns of customer_MN; LEFT signs to the customer_MN
on c.address_id = a.address_id;

--will only displays the intersection columns

SELECT * FROM address_MN;



--will take whole columns of the left table which is customer_MN
select first_name,last_name,address,phone
--customer_MN as c => customer_MN nin ismini c olarak değiştirebiliriz bu şekilde.kısa yolu aşağıdaki gibi as demeden.
from customer_MN c join address_MN a
on c.address_id = a.address_id;


--INTERSECTION VALUES


--gets all the inf from the right table. but gets the intersection values from the left  table.
select first_name,last_name,a.address_id,address,phone
--customer_MN as c => customer_MN nin ismini c olarak değiştirebiliriz bu şekilde.kısa yolu aşağıdaki gibi as demeden.
from customer_MN c right join address_MN a
on c.address_id = a.address_id;

--gets all the inf from the 2 tables since we defined as full join.
select first_name,last_name,a.address_id,address,phone
--customer_MN as c => customer_MN nin ismini c olarak değiştirebiliriz bu şekilde.kısa yolu aşağıdaki gibi as demeden.
from customer_MN c full join address_MN a
 on c.address_id = a.address_id;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,LOCATION_ID
FROM EMPLOYEES FULL JOIN DEPARTMENTS
on EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID;

SELECT FIRST_NAME,LAST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID
FROM EMPLOYEES E LEFT JOIN DEPARTMENTS D
on E.DEPARTMENT_ID=D.DEPARTMENT_ID;

SELECT FIRST_NAME,LAST_NAME,E.DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID
FROM EMPLOYEES E LEFT outer join DEPARTMENTS D
on E.DEPARTMENT_ID=D.DEPARTMENT_ID
WHERE D.DEPARTMENT_ID is null;