create table professors(
    pcode char(3) primary key, 
    pname varchar(15),
    dept varchar(30),
    hiredate date,
    title varchar(15),
    salary int
    /* primary키  - 중복되지 않는 것  중복하면 오류 남*/
    /* char 랑 varchar랑 3 , 15 차이는 */
);

insert into professors(pcode,pname,dept,hiredate,title,salary)
values('221','이병렬','전산','75/04/23','정교수', 3000000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('228','이재광','전산','91/09/19','부교수',2500000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('311','강승일','전자','94/06/09','부교수',2300000);
insert into professors(pcode,pname,dept,hiredate,title,salary) 
values('509','오문환','건축','92/10/14','조교수',2000000);

select * from professors;
delete from professors where pcode is not null;

/* 221번 교수의 이름을 김병렬로 수정*/
/*update professors set pname='김병렬' where pcode='221'; 한줄 전체 삭제*/
update professors set pname='김병렬' dept='컴정'
where pcode ='221';

select *from professors;
select *from professors where dept ='전산';

select *from professors where pname like '이%';  /*와일드카드 문자라고 함*/

select *from professors order by salary;  /* 오름차순(어센딩ascending <-> descending)*/

commit

select max(pcode) + 1 as code from professors;

select* from professors where pcode='228';
select *  from professors;
delete from professors where pcode='228';

update professors set dept='전자', hiredate='24/04/16',title='정교수'
where pcode='510';