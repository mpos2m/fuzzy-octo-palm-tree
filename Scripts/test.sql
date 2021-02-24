select user(),database();

show tables;

desc title;
desc department;
desc employee;

select tNo,tName from title;
select deptNo, deptName , floor from department;

delete from title where tNo =6;
delete from department where deptNo =5;

select tNo,tName from title where tNo = 1;

update title set tname = '계약직' where tNo = 6;

delete from title where tno = 6;
insert into title values(6,'인턴');

select deptNo,deptName,floor from department;
delete from department where deptNo = 5;

select empNo,empName,title,manager,salary,dept from employee;
select empNo,empName,tNo,manager,salary,dept from employee e join title t on e.title = t.tNo ;

create or replace view vw_full_employee as
select e.empno
	,e.empname
	,t.tno as title_no
	,t.tname
	,e.manager as manager_no 
	,m.empname as manager_name
	,e.salary
	,d.deptNo as deptno
	,d.deptName
	,d.floor 
from employee e 
	join title t on e.title = t. tno
	left join employee m on e.manager = m.empno
	join department d on e.dept = d.deptNo;

select * from vw_full_employee ;


select empNo,empName, title as title_no,manager as manager_no,salary,dept as deptNo from employee where empno = 1003;

select * from employee;
delete from employee where empNo =1004;


insert into employee values(1004,'천사',5,4377,2000000,1);

update employee set dept = 3 where empno = 1003;

delete from employee where empno = 1004;

update employee set empName = '천사2', manager =1003, salary = 2500000 where empNo = 1004;

-- 부서가 1인 사원정도를 출력

select empNo, empName, title, manager, salary, dept from employee 
	where dept =(select deptNo from department where deptNo =1);
	
