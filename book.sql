
drop table book;
create table book(
id number not null,
title varchar2(50),
author varchar2(20),
price numberr default 0,
qty number default 0,
primary key(id)
);
