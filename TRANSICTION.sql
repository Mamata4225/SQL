create database CUSTOMER;
USE CUSTOMER;

CREATE TABLE CUSTOMER_DETAILS(
CUSTOMER_ID INT ,
CUSTOMER_NAME VARCHAR(15),
CUSTOMER_NUMBER BIGINT,
CUSTOMER_ADDRESS VARCHAR(200)
);

SELECT * FROM customer.customer_details;

SHOW COLUMNS FROM customer_details;
desc customer_details;

CREATE TABLE CUSTOMER_ORDER(
ORDER_ID INT,
ORDER_PRICE INT,
ORDER_NAME VARCHAR(50)
);

CREATE TABLE TRANSACTION(
TRANSACTION_ID INT,
TRANSACTION_TIME TIME UNIQUE,
TRANSACTION_AMOUNT DOUBLE CHECK(TRANSACTION_AMOUNT>1),
TRANSACTION_TYPE VARCHAR(10) NOT NULL,
TRANSACTION_STATUS BOOLEAN ,
PRIMARY KEY(TRANSACTION_ID)
);

ALTER TABLE TRANSACTION MODIFY TRANSACTION_TIME TIME UNIQUE;
DESC TRANSACTION;


CREATE TABLE HOSPITAL(
HOSPITAL_ID INT,
HOSPIAL_NAME varchar(50),
HOSPTAL_TYPE BOOLEAN,
HOSPTAL_SIZE int(15)
);


CREATE TABLE STUDENT;
STUDENT_ID INT
);

	
USE CUSTOMER;
select * FROM customer.hospital;

CREATE TABLE COLLEGE(
COLLEGE_ID INT,
COLLEGE_NAME VARCHAR(50),
COLLEGE_TYPE BOOLEAN
);

use CUSTOMER ;

create table product(
product_id int,
product_name varchar(10),
product_amount double
);

drop table product;









































































































































































































































































