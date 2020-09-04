$Results = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "SELECT 'dbo.Table1' [TABLE_NAME]"
$TableName = $Results[0]
Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table $TableName -AutoCreateTable 
