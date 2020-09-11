$Results = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "SELECT 'dbo.Table1' [TABLE_NAME], '1' [ACCOUNT_ID] UNION SELECT 'dbo.Table2' [TABLE_NAME], '2' [ACCOUNT_ID]"
foreach ($i in $Results)
{
	$Table = $i[0]
	$Table
	Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table $Table -AutoCreateTable
}
	