create table C(
	c1 varchar(10) primary key,
    c2 varchar(10),
    c3 varchar(10),
    unique(c2,c3)
);


create table A(
	a1 varchar(10),
    a2 varchar(10),
    a3 varchar(10),
    primary key(a1,a2),
    constraint A_C foreign key (a2) references C(c1)
);

create table B(
	b1 varchar(10),
	b2 varchar(10),
    b3 varchar(10) not null,
    primary key(b1,b2),
    constraint B_C foreign key (b3) references C(c1)
);