-- create database Danh_sach ;
use DAnh_sach ;
create table customer(
	Customer_number int NOT NULL,
    Customer_name varchar(50) NOT NULL,
    Customer_type varchar(50),
    Customer_code int,
    primary key (Customer_number)
);

create table supplier (
	supplier_id int NOT NULL,
    supplier_name varchar(50) NOT NULL,
    primary key(supplier_id)
);

create table item (
	item_number int NOT NULL, 
	item_name varchar(50) NOT NULL,
	supplier_id int NOT NULL,
    price float ,
    primary key(item_number),
    foreign key(supplier_id) REFERENCES supplier(supplier_id)
);

create table relationship(
	customer_number int,
    item_number int,
    quantity int,
    foreign key (customer_number) references customer(customer_number),
    foreign key (customer_number) references item(item_number)
);

select * from customer;
select * from item;
select * from supplier;
select * from relationship;
