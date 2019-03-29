

New-UDPage -Name "History" -Icon history  -Content {

 New-UDCard -Title "History" -Endpoint {
 
    $data = Import-Csv "$PSScriptroo\files\TEST - Copy.csv"
    $data1 = ($data | gm -MemberType NoteProperty).Name
    $tl = $data1.Length
    $values = $data1[-1..-($tl-4)]


    New-UDInput  -Id "Form" -Content {
    
    New-UDInputField -Type 'select' -Name 'query' -Placeholder 'Select Status time' -Values $values 
    
    } -Endpoint {
    
        param($query)


        New-UDInputAction -Content @(
        
        
                        New-UDGrid -Title "Server Details" -Headers @("Name","IP","Domain","$query") -Properties @("Name" ,"IP","DM","ST") -Endpoint {
            
                
                       $dataobj = @()
              
                        
                        $Data | % {

                                        $BgColor = 'green'
                                        $FontColor = 'white'
                                         if ($_.($query) -eq 'OFFLINE') {
                                            $BgColor = 'red'
                                            $FontColor = 'white'
                                          }
            
            
                                        $data2 = [ordered]@{
            
                                                                "Name" = ($_."Computer Name")
                                                                "IP"   = ($_."IP ADDRESS")
                                                                "DM"   = ($_."Domain")
                                                                "ST"   = New-UDElement -Tag 'div' -Attributes @{ style = @{ 'backgroundColor' = $BgColor; 'color' = $FontColor}  } -Content { $_.($query) }
            
            
            
                                               }

                                        $dataobj += @(New-Object PSObject -Property $data2)
                
                
                
                
               }

               $dataobj | Out-UDGridData

        }

                        New-UDCard -Title "Check other Statuses" -Content {
                        
                            New-UDLink -Text "Click Here!!" -Icon arrow_right -Url "/History"
                        
                       }
        
        )
    
    }
 
 
 }  


    

}
