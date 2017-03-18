create database imrket defult charset= 'utf8';
create user inarket@'%' identified by 'p@ssword';
grant all on imarket.* to imrket@'%';
use imarket;
create table member(
    id serial,
    email varchar(100) unique not null,
    password varchar(200),
    name varchar(100)
);

insert into member(email,password,name) 
value('mark@fb.com', sha2('mark123', 512), 'Mark Zuckerberg');

create table post(
    id serial,
    title varchar(1000),
    detail varchar(8000),
    time timestamp,
    owner bigint
);

inset into post(title, detail, owner)
values('Books For sales')
'Please contact me directly 0812345689', 1);

