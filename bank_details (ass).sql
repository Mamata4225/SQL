SELECT * FROM bank_details.account_details;

insert into bank_details.bank_table values(1,'mamata',1019568630, 50000, 5000, 1, '21:04:24 12:02:01');
insert into bank_details.bank_table values(2,'manish',1019568631, 70000, 5000, 1, '21:01:23 01:02:01');
insert into bank_details.bank_table values(3,'madhu',1019568632, 20000, 5000, 0, '21:02:20 06:02:01');
insert into bank_details.bank_table values(4,'kavya',1019568633, 100000, 5000, 1, '21:03:08 11:02:01');
insert into bank_details.bank_table values(5,'amit',1019568634, 80000, 5000, 0, '21:05:05 10:02:01');

desc  bank_details.bank_table;

select * from bank_table where deposit_cash<50000;


ALTER TABLE bank_table RENAME TO account_details; 

select current_timestamp();

select id , account_number from account_details; 

select * from account_details limit 3;

select distinct withdrawn_cash from account_details;

delete from account_details where account_number=1019568632;
delete from account_details where account_number=1019568634;


truncate account_details;
drop database bank_details;