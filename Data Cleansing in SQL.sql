/* creates a new table */

create table orders_raw (
    order_id INTEGER,
    customer_name TEXT,
    email TEXT,
    order_date DATE,
    product_name TEXT,
    quantity INTEGER,
    price NUMERIC(10,2),
    status TEXT
);
select * from orders_raw;


/* removes duplicate rows */

/* removing duplicates in snowflake */
with duplrow as(
	select *,
	row_number() over (partition by lower(customer_name), email, order_date, product_name, price order by order_id) as rn
	from orders_raw
)
delete from duplrow
where rn>1;

/* removing duplicates in postgresql */
delete from orders_raw
where order_id in (
  select order_id
  from (
    select order_id,
           row_number() over (
             partition by lower(customer_name), email, order_date, product_name, price
             order by order_id) as rn
    from orders_raw
  ) as sub
  where sub.rn > 1
);
select * from orders_raw;

/* fills in the blank value */
update orders_raw
set quantity = 1
where quantity is null;

update orders_raw
set price = 0.00
where price is null;

/* replaces incorrect email formats */

select * from orders_raw where email not like '%@%.%';

update orders_raw
set email = null
where email not like '%@%.%';

/* unifies the name (lower and upper case) */
update orders_raw
set customer_name= lower(customer_name);

/* fills in empty status */
update orders_raw
set status = 'pending'
where status is null;

/* removes rows without a product */
delete from orders_raw
where product_name is null;


/* separates name and surname */
alter table orders_raw add column first_name TEXT;
alter table orders_raw add column last_name TEXT;

update orders_raw
set first_name = trim(substring(customer_name from 1 for position(' ' in customer_name) - 1)),
    last_name = trim(substring(customer_name from position(' ' in customer_name) + 1));


/* removes unnecessary column  */
alter table ders_raw drop column customer_name;

select * from orders_raw;