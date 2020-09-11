#REDEFINES IT AS A SYSTEM OBJECT
$objRecordset = New-Object -comobject ADODB.Recordset
$objRecordset.GetType()
$objRecordset = Invoke-DbaQuery -SqlInstance "HSYOLAP02\SQL2K16" -Database Test -Query "SELECT 'dbo.Table1' [TABLE_NAME], '10' [ACCOUNT_ID] UNION SELECT 'dbo.Table2' [TABLE_NAME], '11' [ACCOUNT_ID]"
$objRecordset
$objRecordset.GetType()
#this gives me an array of arrays so I can access them like:
$objRecordset[0][0]
$objRecordset[0][1]
$objRecordset[1][0]
$objRecordset[1][1]