Import-Module UniversalDashboard.Community



 $PSScriptroo =  $PSScriptroot          
 
$endpoint = New-UDEndpointInitialization -Variable PSScriptroo

$folder = Publish-UDFolder -Path (Join-Path $PSScriptroo "files" ) -RequestPath "/files"           



 

$page1 =  . (Join-Path $PSScriptroo "\pages\page1.Ps1")

$Page2 = . (Join-Path $PSScriptroo "\pages\page2.Ps1")

$Page3 = . (Join-Path $PSScriptroo "\pages\page3.Ps1")

$Page4 = . (Join-Path $PSScriptroo "\pages\page4.Ps1")

$page5= . (Join-Path $PSScriptroo "\pages\page5.Ps1")

$page6 = . (Join-Path $PSScriptroo "\pages\page6.Ps1")






$dash = New-UDDashboard -Pages @($page1,$Page2,$Page3,$Page4,$page5,$page6) -Title "Network Check "  -EndpointInitialization $endpoint

Start-UDDashboard -Port 12345 -Dashboard $dash -PublishedFolder $folder

#Get-UDDashboard | Stop-UDDashboard



