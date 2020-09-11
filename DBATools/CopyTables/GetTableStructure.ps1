$tablescript = Get-DbaDbTable -SqlInstance "HSYOLAP02\SQL2K16" -Database "Test" -Table "dbo.Table1" | Export-DbaScript -Passthru;
$tablescript;