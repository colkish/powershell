use Test ;


drop table dbo.Table1 ;
create table dbo.Table1 (AccountID int not null primary key) ;
insert dbo.Table1 values (1), (2)
select * from dbo.Table1 ;

drop table dbo.Table2 ;
create table dbo.Table2 (AccountID int not null primary key) ;
insert dbo.Table2 values (1), (2)
select * from dbo.Table2 ;

--FOR OTHER SERVER
use Test ;
--create empty
drop table dbo.Table1 ;
create table dbo.Table1 (AccountID int not null primary key) ;
drop table dbo.Table2 ;
create table dbo.Table2 (AccountID int not null primary key) ;

select @@SERVERNAME
select * from dbo.Table1 ;
select * from dbo.Table2 ;

/*
drop table dbo.Table1 
drop table dbo.Table2
*/
select * from Test.dbo.Table1 where AccountID = 1

alter proc dbo.SourceProc 
as
SELECT 'Test.dbo.Table1' [TABLE_NAME], '1' [ACCOUNT_ID] UNION SELECT 'Test.dbo.Table2' [TABLE_NAME], '2' [ACCOUNT_ID]