SELECT * FROM customer.amazon_book;
insert into amazon_book (B_id,B_price,B_name,B_no_of_pages,B_author) values (1,450.0,'JAVA',500,'James Gosling');
insert into amazon_book (B_id,B_price,B_name,B_no_of_pages,B_author) values  (2,550.0,'HTML',400,'Timothy John');
insert into amazon_book (B_id,B_price,B_name,B_no_of_pages,B_author) values (3,650.0,'JS',550,'Brendan Eich');
insert into amazon_book (B_id,B_price,B_name,B_no_of_pages,B_author) values(4,1500.0,'REACT',1050,'Jordan Walke ');

ALTER TABLE amazon_book rename to AMAZON_Book_Details;
SELECT * FROM AMAZON_Book_Details;
ALTER TABLE AMAZON_Book_Details ADD B_EDITION varchar(15);
ALTER TABLE AMAZON_Book_Details modify B_EDITION INT;
update  AMAZON_Book_Details set  B_EDITION =3 where B_ID =4 ;

update AMAZON_Book_Details set B_PRICE = 550 where B_ID in (1,3);
update AMAZON_Book_Details set B_PRICE = 300 where B_ID in (1);
select * from  AMAZON_Book_Details  where B_ID between 1 and 2;
select * from  AMAZON_Book_Details  where B_PRICE between 300 and 750;
select sum(B_PRICE)from AMAZON_Book_Details;

select count(B_NAME) from AMAZON_Book_Details ; -- null not counted
select avg(B_PRICE) from  AMAZON_Book_Details;  -- average 

select k.B_ID,B_NAME from  AMAZON_Book_Details as k;
--  aliyas is avoid the duplicate  name it will show the original value

select min(B_PRICE) as min_value from AMAZON_Book_Details;
select max(B_price) as max_value from AMAZON_Book_Details;

select * from AMAZON_Book_Details where B_NAME like 'J%';
select * from AMAZON_Book_Details where B_NAME like 'J%A';
select * from AMAZON_Book_Details where B_NAME like 'J%s';
select * from AMAZON_Book_Details where B_NAME like '%J_V%';
select * from AMAZON_Book_Details where B_PRICE like '1%';


