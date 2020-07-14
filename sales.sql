select * from sales where 'Order Priority'= '';

select * from sales where saleschannel = 'Online';

select * from sales where orderpriority = 'c';

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

insert into sales values (1, 'asia', 'india', 'yo', 'l', 'h', '14/3/18', 1, '2/2/20', 20, 50, 60, 70, 80, 90);

select * from sales where id is null;
select * from sales where saleschannel is null;
select * from sales where id is not null;

update sales set id = 10 where id = 1;
update sales set itemtype = 'Yo whats up man!!!' where id = 10;
update sales set id = 1;
update sales set id = null;
update sales set id = 10 where id = null; /* this doesn't work*/

select * from sales;



