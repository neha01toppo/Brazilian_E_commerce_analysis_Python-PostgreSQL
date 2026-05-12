--create customers table
create table customers
(customer_id varchar(100) primary key,
customer_unique_id varchar(100),
customer_zip_code_prefix int,
customer_city varchar(50),
customer_state varchar(20)
);


drop table if exists orders
--create orders table.

create table orders
(
order_id varchar(50) primary key,
customer_id varchar(100),
foreign key (customer_id)
references customers(customer_id),
order_status varchar(20),
order_purchase_timestamp timestamp,
 order_approved_at timestamp,
 order_delivered_carrier_date timestamp,
 order_delivered_customer_date timestamp,
 order_estimated_delivery_date timestamp
);


--create table products.
create table products
(
product_id varchar(100) primary key,
product_category_name varchar(50),
product_name_lenght int,
product_description_lenght int,
product_photos_qty int,
product_weight_g float,
product_length_cm float,
product_height_cm float,
product_width_cm float
 );


drop table  if exists order_item;
--create order_item table.
create table order_item
(
order_id varchar(50),
foreign key(order_id)
references orders(order_id) ,
order_item_id int,
product_id varchar(100),
seller_id varchar(100),
shipping_limit_date timestamp,
price float,
freight_value float
 );



--create order_review table.
create table order_review
(
review_id varchar(50),
order_id varchar(50),
primary key(review_id,order_id),
foreign key(order_id)
references orders(order_id),
review_score int,
review_comment_title varchar(50),
review_comment_message varchar(100),
review_creation_date timestamp,
review_answer_timestamp timestamp
 );


--create payment  table.
create table payments
(
order_id varchar(50),
foreign key (order_id)
references orders(order_id),
payment_sequential int,
payment_type varchar(20),
payment_installments int,
payment_value float
 );

 --create seller table
 create table sellers
(
seller_id varchar(50),
seller_zip text,
seller_city varchar(50),
seller_state varchar(20)
 );
 
 --create table for product category name translated in english
create table product_category_name_translation(
product_category_name varchar(50),
c varchar(50)
);

select*from product_category_name_translation;
select* from customers;
select* from order_item;
select* from order_review;
select* from orders;
select* from payments;
select* from products;
select*from sellers;

-- add a column for translated category name in english.
alter table products
add column product_category varchar(50);


--update table with english translated product name.
update products p
set product_category=e.product_category_name_english
from product_category_name_translation e
where p.product_category_name= e.product_category_name;



--join tables (order_level)
select 
i.order_id,
i.order_item_id,
i.price,
o.customer_id,
o.order_status,
o.order_purchase_timestamp,
o.order_delivered_customer_date,
o.order_estimated_delivery_date,
p.product_id,
p.product_category
from order_item i
left join orders o on i.order_id= o.order_id
left join products p on i.product_id=p.product_id;






--customer_level table

with purchase_spent as(
    select order_id,count(order_id)as quantity,sum(price)as spent_price
	from order_item
	group by 1)

select c.customer_id,c.customer_unique_id,c.customer_city,c.customer_state,
       o.order_status,
       p.quantity,p.spent_price
from customers c
left join orders o on c.customer_id=o.customer_id
left join purchase_spent p on o.order_id=p.order_id;


--join table (product_level)
with order_product as
  (select product_id,order_id,
         round(sum(price)::numeric,2)as product_price
  from order_item
  group by 1,2),

review_product as(
     select o.order_id,o.product_id,r.review_score
	 from order_item o
	  join order_review r on r.order_id=o.order_id)

select o.product_id,o.order_id,o.product_price,
       r.review_score,
	   p.product_category
from order_product o
left join review_product r on o.order_id=r.order_id
 join products p on o.product_id=p.product_id;
       



