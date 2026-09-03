/*Find out the names of the tables you have created in your database.*/
show tables;

/*Examine the structure of the table item.*/
describe item;

/*Exit from MySQL server and log on again*/
mysql -u mysqluser -p
show databases;
use school_items;

/*Retrieve all records from item table.*/
select * from item;

/*Retrieve all records from bookShop table*/
select * from bookshop;

/*Retrieve all records from distribute table*/
select * from distribute;

/*Retrieve itName and price from Item table*/
select itName, price from item;

/*Retrieve the item codes from distribute table.*/
select itCode from distribute;

/*Retrieve the item codes without repetition from distribute table.*/
select distinct itCode from distribute;

/*Retrieve item name and price from Item table according to the descending order of the price*/
select itName, price from item order by price desc;

/*Retrieve all records from Item table where price is greater than 1000.00. */
select * from item where price > 1000.00;

/*List the details of items which brand is equal to Atlas, Mango and DSI*/
select * from item where brand ='Atlas' or brand='Mango' or brand = 'DSI';
select * from item where brand in ('Atlas', 'Mango', 'DSI');

/*Retrieve item codes which are distributed to the bookshop BS01.*/
select itCode from distribute where bsCode = 'BS01';

/*List the item names begin with letter F.*/
select itName from item where itName like 'F%';

/* List the item names end with letter er.*/
select itName from item where itName like '%er';