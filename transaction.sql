
select transaction_id , transaction_amount from customer.transaction;

select * from customer.transaction;

desc transaction;

	select current_timestamp();
    
    select * from transaction where Transaction_amount > '5000' ;
	select * from transaction where transaction_time ='2:22:22';


    select * from transaction where Transaction_amount > '5000' and transaction_type = 'phonepe';
select  TRANSACTION_AMOUNT, TRANSACTION_TYPE ,TRANSACTION_STATUS from transaction where Transaction_amount > '5000' and transaction_type = 'phonepe' and  transaction_status = '0';

select distinct transaction_amount from customer.transaction;

				select * from transaction where TRANSACTION_STATUS is null;
        
        		select * from transaction where TRANSACTION_STATUS is not null;

	    select * from customer.transaction limit 2;
      
       select * from customer.transaction ORDER BY TRANSACTION_ID;

       select * from customer.transaction ORDER BY TRANSACTION_ID DESC;
       
              select * from customer.transaction ORDER BY TRANSACTION_ID ASC;
              
               select * from customer.transaction ORDER BY TRANSACTION_ID DESC , TRANSACTION_AMOUNT ASC;

UPDATE customer.transaction SET TRANSACTION_AMOUNT=7000, transaction_id = 9 WHERE TRANSACTION_ID =1 ;
        
        select * from customer.transaction order by TRANSACTION_ID asc limit 3;
        
        update customer.transaction set transaction_amount =9000 where transaction_amount < 6000;

SELECT * FROM customer.transaction;

