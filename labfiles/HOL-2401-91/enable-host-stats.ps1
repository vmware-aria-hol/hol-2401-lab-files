$plink_cmd = "C:\hol\tools\plink.exe"
$domain = ".corp.vmbeans.com"
$login = "root"
$password = "VMware1!"
$command = "sh /bin/esxload.sh&"
$host_counter = 1
$hostname = ""
while($host_counter -lt 6) {
	$hostname = "esx-0" + $host_counter + "a" + $domain
	Write-Output "Logging in to $hostname..."
	Invoke-Expression "$plink_cmd -ssh $hostname -l $login -pw $password $command"
	$host_counter++
}
