Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table dbo.Table1 -Query "select * from Test.dbo.Table1 where AccountID = 1" -AutoCreateTable