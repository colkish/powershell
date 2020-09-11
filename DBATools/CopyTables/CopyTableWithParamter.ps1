$TableName = 'dbo.Table1' 
Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table $TableName -AutoCreateTable 