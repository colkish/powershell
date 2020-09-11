use Test ;

drop table dbo.Table1 ;
create table dbo.Table1 (AccountID int not null primary key) ;
drop table dbo.Table2 ;
create table dbo.Table2 (AccountID int not null primary key) ;

select @@servername ;
select * from dbo.Table1 ;
select * from dbo.Table2 ;

/*
delete dbo.Table1 
delete dbo.Table2
*/
