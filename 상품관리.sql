create table product(
    code char(3) not null primary key, /* null�϶� ���� X, �ߺ� X */
    name varchar(100) not null,
    price int default 0 /*���� �־����� ������ 0���� ���� */
);

drop table product;

desc product;

insert into product(code, name, price)
values('101', '�����', 3500000);
insert into product(code, name, price)
values('102', '��Ź��', 2300000);
insert into product(code, name, price)
values('103', '��Ÿ�Ϸ�', 1700000);

select * from product;

create table sale(
    seq int,
    code char(3) not null,
    sale_date date default sysdate,
    qnt int default 1,
    primary key(code, sale_date),
    foreign key (code) references product (code) /* ����Ű */
);

desc sale;

drop table sale;

insert into sale(seq, code, sale_date, qnt)
values(1, '101', '2024/04/01', 12);
insert into sale(seq, code, sale_date, qnt)
values(2, '102', '2024/04/01', 5);
insert into sale(seq, code, sale_date, qnt)
values(3, '103', '2024/04/02', 6);
insert into sale(seq, code, sale_date, qnt)
values(4, '101', '2024-04-03', 15);

select * from sale;

create sequence seq_sale increment by  1 start with 5; /* 1�� ���� 5���� ���� */
drop sequence seq_sale;
insert into sale(seq, code, sale_date, qnt)
values(seq_sale.nextval, '103', '2024-04-05', 10);
delete from sale where seq = 5; 
update sale set qnt = 12 where seq = 6;

create view view_sale as
select s.code, name, price, sale_date, qnt
from product p, sale s
where p.code = s.code;
select *
*from view_sale 
where price >= 3000000;
oder by price desc;

select max(code)+1 as code from product;

commit;

select * from product;
select * from sale;

delete from product where code='104';
