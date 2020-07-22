select * from sales where 'Order Priority'= '';

select * from sales where saleschannel = 'Online';

select * from sales where orderpriority = 'c';
select * from sales where id = 5;
select * from sales where not id = 1;

select distinct (country), orderpriority from sales;

select orderid from sales;

select * from sales;

select (select group_concat(distinct region) from sales as region),
(select group_concat(distinct itemtype) from sales as yo);

select country count from sales;

select * from sales where country = 'india' and region = 'asia' and orderpriority = 'c';

select * from sales where not country = 'india';

select distinct orderpriority from sales;

select * from sales order by saleschannel asc;

select * from sales order by saleschannel asc, orderpriority desc;

insert into sales values (7, 'asia', 'india', 'yo', 'l', 'h', '14/3/18', 1, '2/2/20', 20, 50, 60, 70, 80, 90);

select * from sales where id is null;
select * from sales where saleschannel is null;
select * from sales where id is not null;

update sales set id = 10 where id = 1;
update sales set itemtype = 'Yo whats up man!!!' where id = 10;
update sales set id = 1;
update sales set id = null;
update sales set id = 10 where id = null; /* this doesn't work*/
update sales set orderpriority = 'H' where itemtype = 'yo';

delete from sales where id = 3;
delete from sales where itemtype = 'yo';
/* if we don't use where clause it will delete the entire table */

/** creating a table **/
create table yo (
 id int,
 names varchar(255),
 age int);
 select * from yo;
 insert into yo values (2, 'sriram', 24);
 /** It deletes the entire table data very careful while deleting the rows and colums **/
 delete from yo;
 
 /** limit functionality will return results upto the limit we mention */
 select * from sales limit 10;
 select * from sales where country = 'india' limit 10;
 
 /** this returns the value and column name with max */ 
 select country max from sales;
 select MAX( country) from sales;
 select min(country) from sales;
 select min(orderdate) as priority from sales;
 
select count(country) from sales;
select avg(unitcost) from sales;
select sum(id) from sales;

/** finding difference between two values or columns */
select min(id) - max(id) from sales;

/** rounding off the values */
select round (avg(unitcost)) from sales;

/** like is kind of regex **/
select * from sales where country like "%a"; /** any values end with "any character" */
select * from sales where country like "b%"; /** any values start with "any character"*/
select * from sales where country like '%ab%'; /** check the values are present in the record*/
select * from sales where country like '_a%'; /** finds the values where a has second position in the record*/
select * from sales where country like '____a%'; /** '__' is the number of spaces where the character postioned and want to search in table*/
select * from sales where country like 'a___%'; /** 'a__%' letter starts with a and has minimum two character */
select * from sales where country like 'c%a'; /** it returns the value starts with c and ends with a */

/** some of the soultions are not working as excepted need to reverify again */
/** regex expression starting with these letters and ending with these letters*/
select * from sales where country rlike '^.*[aeiou]$';
select * from sales where country rlike '^[abc].*[abc]$';
select * from sales where country not rlike '^[aeiouAEIOU].*[aeiouAEIOU]$'; /** not starts with these character in records */
select * from sales where country not regexp '^[aeiou]' order by city asc;

alter table sales add column numbers int not null;

select  min(country), length(min(country)) from sales order by country asc;

select length(min(country)), min(country) from sales order by country asc limit 1;
select  min(country) from sales where country = length(country) ;
/** to count out the record length */
select  length(max(country)) from sales;

Select country,char_LENGTH(country) from sales Order By Length(country), country asc limit 4; 
Select City,char_LENGTH(City) from Station Order By Length(City) desc, City desc limit 1;

select id from sales where id > 2 and id < 7;

/** round is function to round of the decimal value, it is 0 then no decimal, if it is 3 then .000 */
select round(sum(id),4) from sales where id > 2 and id < 7;
select max(id) from sales where id < 5;

select id from sales where country = 'india' order by country desc limit 3;

select country, count(country) from sales;

select max(unitssold), UnitCost * UnitPrice as price, count(UnitsSold) from sales where unitssold * unitprice;
select * from sales where max(unitssold);

/** in statement is used for multiple values selection in the where clause */
select * from sales where UnitsSold in (select max(UnitsSold) from sales) = 1;
select UnitPrice as price from sales where UnitsSold in (select max(UnitsSold) from sales);

/** between statements used to select the range between two of them */
select country from sales where id between '2' and '5';



select * from sales;




