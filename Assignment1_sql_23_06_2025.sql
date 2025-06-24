-- Objective:  Learn to create databases, tables, and define relationships.

create database library;
use library;
create table books(
book_id int primary key,
title varchar (20),
price int ,
published_year YEAR
);
create table members (
member_id int primary key ,
name varchar (100),
email varchar(100) unique
);

create table transaction (
transaction_id int primary key ,
book_id int ,
member_id int,
issue_date date ,
return_date  date ,
foreign key (member_id) references members(member_id),
foreign key (book_id) references books(book_id)
);

