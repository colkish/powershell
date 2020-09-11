$Results = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "EXEC dbo.SourceProc"
foreach ($i in $Results)
{
	$Table = $i[0]
	$Query = "select * from " + $i[0] + " where AccountID = " + $i[1]
	Copy-DbaDbTableData -SqlInstance HSYOLAP02\SQL2K16 -Destination HSYOLAP02 -Database Test -Table $Table -Query $Query -CheckConstraints
}
#Results are printed even on a pk warning failure
$Results ;