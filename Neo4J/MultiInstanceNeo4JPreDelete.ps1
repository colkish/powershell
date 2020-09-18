try
{	# Define server specific parameters and Neo4J credentials
	$cypherShellLoc = "C:\Users\ckish.HS\.Neo4jDesktop\neo4jDatabases\database-268339ec-ff62-4f48-ab55-4a1c39ab5069\installation-3.5.17\bin"
	$SourceServer = "HSYOLAP02\SQL2K16"
	$DataStoreDB = "CISCO_TEST_SDS_DataStore"
	$neo4JBolt = "bolt://localhost:7687" 
	$neo4JUser = "neo4j"
	$neo4JPass = "Ts0rg123"
	$NeoCommand = Invoke-DbaQuery -SqlInstance $SourceServer -Database $DataStoreDB -CommandType StoredProcedure -Query "maintenance.uspGetNeo4JToBeDeleteCount" -EnableException # Get Neo count of deleted account nodes and relationships command
	$cypherCmd = $NeoCommand[0] # set cypher command to the 1st row returned from DB proc call (there will only be ever 1 row)
	$cypherCmd # display command
	cd $cypherShellLoc # change dir to cypher shell location
	$cypherResults = ./cypher-shell.bat -a $neo4JBolt -u $neo4JUser -p $neo4JPass $cypherCmd --format verbose # make Neo4J command call 
	$cypherResults # display results 
	

} # Error trapping 
catch
{
	$_.Exception.Message
    $_.Exception.ItemName
}
finally
{
	exit 
}	