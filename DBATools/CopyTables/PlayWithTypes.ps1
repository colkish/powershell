$Results = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "SELECT 'dbo.Table1' [TABLE_NAME], '10' [ACCOUNT_ID] UNION SELECT 'dbo.Table2' [TABLE_NAME], '11' [ACCOUNT_ID]"
$TableNameCheck = $Results[1]
$TableName = $TableNameCheck[0]
$Results
$TableNameCheck
$TableNameCheck.gettype()
