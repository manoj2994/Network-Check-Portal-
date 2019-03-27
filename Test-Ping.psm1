function Test-Ping{


[cmdletbinding()]param(


)

begin{



[System.Object]$result = @()



}

process{

$ip = Import-Csv -Path "C:\Users\Administrator\Desktop\POSHUD\TEST - Copy.csv"

foreach ($i in $ip){


try{
$ping = New-Object System.Net.NetworkInformation.Ping
$test = $ping.Send("$($i.'IP ADDRESS')",1900)


#$dns = [Net.DNS]::GetHostEntry("$i")





switch ( $test.Status)  {


("TimedOut"){

$ping = New-Object System.Net.NetworkInformation.Ping
$test2 = $ping.Send("$($i.'IP ADDRESS')",1900)

    switch ( $test2.Status){

            ( "Success"){
                          $i | Add-Member -MemberType NoteProperty -Name "STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" -Value "ONLINE" -Force
                          $result += $i
                                
                         }

            ("TimedOut"){
                $i | Add-Member -MemberType NoteProperty -Name "STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" -Value "OFFLINE" -Force


                $result += $i
                         }
                            }

}

( "Success"){

   
   $i | Add-Member -MemberType NoteProperty -Name "STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" -Value "ONLINE" -Force
   $result += $i 

}

("DestinationHostUnreachable") {

$i | Add-Member -MemberType NoteProperty -Name "STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" -Value "HOST NOT REACHABLE" -Force
 
  $result += $i 

}



}
}

catch{

	$i | Add-Member -MemberType NoteProperty -Name "STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" -Value "HOST NOT FOUND" -Force
 
        $result += $i 

}

}

$result | Export-Csv -NoTypeInformation "C:\Users\Administrator\Desktop\POSHUD\ISLAB_TEST_PING - Copy.csv"

Clear-Variable -Name result,ip

}

end{

$Totalo=($ip."STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" | where {$_ -eq "OFFLINE"} ).count
$Total= ($ip.'IP ADDRESS').Count

  if(($result."STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour" ) -eq "OFFLINE"){
 


 $result | select -Property 'Computer Name', 'IP ADDRESS','Domain',"STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour"  |Where-Object  {($_."STATUS AT $(Get-date -UFormat %d/%m/%y-%H:%M) Hour") -contains 'OFFLINE' }

  }
  
  
  else{





}

try{


}
catch{




Write-Warning "Unable to Save the Excel File in the Path ,The Sheet is opened.Please close and Try again " 

write-host ""

}

}


}
