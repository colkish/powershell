$data = get-service | Where-Object Status -eq 'Stopped' | select-object Name,Status
$data | export-csv .\services.csv
get-content .\services.csv
