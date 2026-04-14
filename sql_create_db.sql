create database if not exists Grocessary_store;
use grocessary_store;

create table customers (customerid smallint primary key,
                        `Name` varchar(255),
                        Address text);
                        
create table if not exists employees (emp_id tinyint primary key,
									  emp_name varchar(255),
                                      hire_date varchar(255));
                                      
create table if not exists supplier(sup_id tinyint primary key,
                                    sup_name varchar(255),
                                    sup_address text);

                              
                                    
create table if not exists categories(category_id tinyint primary key,
									  category_name varchar(255));
                                      
                                    
create table if not exists products(ProductID smallint primary key,
									product_Name varchar(255),
                                    sup_id tinyint,
                                    category_id tinyint,
                                    Price decimal(10,2),
                                    foreign key(sup_id) references supplier(sup_id) on update cascade on delete cascade,
                                    foreign key(category_id) references categories(category_id) on update cascade on delete cascade);
								
create table if not exists orders (OrderID smallint primary key,
								   customerid smallint,
                                   emp_id tinyint,
								   OrderDate varchar(255),
                                   foreign key(customerid) references customers(customerid) on update cascade on delete cascade,
                                   foreign key(emp_id) references employees(emp_id) on update cascade on delete cascade);

create table if not exists	order_details(Ord_detid smallint auto_increment primary key,
										  OrderID smallint,	
                                          ProductID smallint,
                                          Quantity tinyint,
                                          PriceEach decimal(10,2),
                                          TotalPrice decimal(10,2),
                                          foreign key(OrderID) references orders(OrderID) on update cascade on delete cascade,
                                          foreign key(ProductID) references products(ProductID) on update cascade on delete cascade);

show tables;	
select * from categories;
select * from customers;
select * from employees;
select * from order_details;
select * from orders;
select * from products;
select * from supplier;


