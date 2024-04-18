create table professors(
    pcode char(3) primary key, 
    pname varchar(15),
    dept varchar(30),
    hiredate date,
    title varchar(15),
    salary int
    /* primaryŰ  - �ߺ����� �ʴ� ��  �ߺ��ϸ� ���� ��*/
    /* char �� varchar�� 3 , 15 ���̴� */
);

insert into professors(pcode,pname,dept,hiredate,title,salary)
values('221','�̺���','����','75/04/23','������', 3000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('228','���籤','����','91/09/19','�α���',2500000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('311','������','����','94/06/09','�α���',2300000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('509','����ȯ','����','92/10/14','������',2000000);

select * from professors;
delete from professors where pcode is not null;

/* 221�� ������ �̸��� �躴�ķ� ����*/
/*update professors set pname='�躴��' where pcode='221'; ���� ��ü ����*/
update professors set pname='�躴��' dept='����'
where pcode ='221';

select *from professors;
select *from professors where dept ='����';

select *from professors where pname like '��%';  /*���ϵ�ī�� ���ڶ�� ��*/

select *from professors order by salary;  /* ��������(���ascending <-> descending)*/

commit

select max(pcode) + 1 as code from professors;

select* from professors where pcode='228';
select *  from professors;
delete from professors where pcode='228';

update professors set dept='����', hiredate='24/04/16',title='������'
where pcode='510';