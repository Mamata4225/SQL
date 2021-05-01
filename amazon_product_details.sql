SELECT * FROM customer.amazon_product_details;
desc customer.amazon_product_details;

insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (1,'MOBILE',15000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (2,'fridge ',20000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (5,'TV ',6000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (8,'washing machine ',8000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (9,' MI band ',8000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (3,'bluetooth device',1000.0);
insert INTO amazon_product_details (P_ID , P_NAME,P_PRICE) VALUES (4,'laptop ' ,25000.0);

select count(P_ID), P_NAME from amazon_product_details group by P_NAME;
select count(P_ID), P_PRICE from amazon_product_details group by P_PRICE;

SELECT AVG(P_PRICE),P_NAME FROM amazon_product_details group by P_NAME;


SELECT SUM(P_PRICE),P_ID,P_NAME FROM amazon_product_details group by P_NAME HAVING sum(P_PRICE)>9000;
SELECT COUNT(P_ID),P_NAME FROM amazon_product_details group by P_NAME HAVING COUNT(P_ID)>2 order by P_NAME;

CREATE USER 'mammu'@'localhost' IDENTIFIED BY 'mammu1234';
GRANT ALL PRIVILEGES ON * . * TO 'mammu'@'localhost';
SHOW GRANTS FOR 'mammu'@'localhost';

 -- GRANT ALL PRIVILEGES ON amazon.* TO 'mammu'@'localhost';

select * from amazon_product_details where P_PRICE=(select max(P_PRICE) from amazon_product_details) ;
select * from amazon_product_details where P_PRICE between 
(select min(P_PRICE)from amazon_product_details ) and (select max(P_PRICE) from amazon_product_details);
select * from amazon_product_details where P_PRICE=(select max(P_PRICE) from amazon_product_details) 
and P_PRICE =(select min(P_PRICE) from amazon_product_details);

select max(P_PRICE) from amazon_product_details 
group by P_PRICE ;
