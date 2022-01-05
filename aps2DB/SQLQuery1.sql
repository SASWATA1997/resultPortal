use aps2
create table dbo.studentList
(
Roll_No varchar(15),
Name varchar(30),
Date_of_birth varchar(30),
Accountancy varchar(5),
English varchar(5),
Maths varchar(5),
Economics varchar(5),
Business_Studies varchar(5),
Total varchar(10),
Average varchar(5),
Grade  varchar(5),
Result varchar(8),
)
select * from dbo.studentList;
/*i want to show the roll , dob & result pf akhilesh*/
select Roll_No,Date_of_birth,Result from dbo.studentList where Roll_No='110010201';
/*copy*/
/*displaying all the value of roll=110010201*/
select * from dbo.studentList where Roll_No='110010201';
