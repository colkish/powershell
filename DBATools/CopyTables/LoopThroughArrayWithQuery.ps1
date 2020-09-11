#this doesn't copy the table structure
$Results = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "SELECT 'Test.dbo.Table1' [TABLE_NAME], '1' [ACCOUNT_ID] UNION SELECT 'Test.dbo.Table2' [TABLE_NAME], '2' [ACCOUNT_ID]"
foreach ($i in $Results)
{
	$Table = $i[0]
	$Query = "select * from " + $i[0] + " where AccountID = " + $i[1]
	Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table $Table -Query $Query -CheckConstraints
}