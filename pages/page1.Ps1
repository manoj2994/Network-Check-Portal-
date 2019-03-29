


   
 New-UDPage -Name "Home" -Icon home -Content {

            New-UDRow {
        New-UDColumn -Size 12 {
            New-UDHtml -Markup '<center><h4>Welcome To  Network Check Portal.</h4></center>'
            New-UDHtml -Markup "<center><h5>Here you can Monitor Server Ping status</h5></center>" 
        }
    }       
    
            New-UDRow {
    
                New-UDColumn -size 4 {
            
                    New-UDTable -Headers @("OFFLINE SERVERS?")  -Endpoint {
                
                       [PSCustomobject]@{ LINK =  New-UDLink -Text "CLICK HERE!!!" -Url "/Results"} | Out-UDTableData -Property @("LINK")
                
                
                }
            
            }

                New-UDColumn -Size 4 {}

                New-UDColumn -Size 4 {
                
                    
                    
                       New-UDTable   -Headers @("EXPORT")  -Endpoint {
    
    
                            Get-ChildItem -Path (join-path  $PSScriptroo "files") | ForEach-Object {

                                [pscustomobject]@{
                                Download = New-UDLink -Text "CLICK HERE!!!" -Url "/files/$($_.Name)"
               
               
               
                                }
        
                                   } | Out-UDTableData -Property @("Download")
        
      
    
    
    
}
                    
                    
                
                
                }    
    }

            New-UDRow {
             
                New-UDColumn -Size 12 {
                
                
                 
                    
                        New-UDTable -Headers @("Total No of Servers","Total No of offline Servers","Total No of online Servers","Others","Last Checked Time") -FontColor 'black' -Endpoint {
                            $Data1 = Import-Csv "$PSScriptroo\files\TEST - Copy.csv"
                            
                            [pscustomobject]@{
                            
                                TS = ($Data1.Count).ToString()
                                TOS = ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[-1]) | ? {$_ -match "OFFLINE"}).Length
                                TONS = ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[-1]) | ? {$_ -match "ONLINE"}).Length
                                TOTS = ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[-1]) | ? {$_ -notin ("ONLINE" -and "OFFLINE")}).Count
                                LCT  = (($Data1 | Get-Member -MemberType NoteProperty ).Name[-1])
                            
                            
                            } | Out-UDTableData -Property @('TS','TOS','TONS','TOTS','LCT')
                        
                        
                        }
                    
                    
                
                } 
             } 

            New-UDRow {

                New-UDColumn -Size (1.49) {
                
                    
                
                }
                New-UDColumn -Size 9 {

                    New-UDChart -Type Bar -Title "Network Status Dashboard" -Endpoint {
                $Data1 = Import-Csv "$PSScriptroo\files\TEST - Copy.csv"
                
                -5..-1|ForEach-Object  {
                
                
                    [pscustomobject]@{
                    
                    
                        Date = (($Data1 | Get-Member -MemberType NoteProperty ).Name)[$_]
                        OFFLINE = ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[$_]) | ? {$_ -match "OFFLINE"}).Length
                        ONLINE =  ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[$_]) | ? {$_ -match "ONLINE"}).Count
                        OTHERS =  ($Data1 | select ((($Data1 | Get-Member -MemberType NoteProperty ).Name)[$_]) | ? {$_ -notin ("ONLINE" -and "OFFLINE")  }).count
                    
                    
                    }
                
                
                } | Out-UDChartData -LabelProperty "Date" -Dataset @(
                
                    New-UDChartDataset -DataProperty "OFFLINE" -Label "OFFLINE" -BackgroundColor "#80962F23" -HoverBackgroundColor "#F95416" -BorderColor "black" -HoverBorderColor "black" -BorderWidth 1 
                    New-UDChartDataset -DataProperty "OTHERS" -Label "OTHERS"   -BackgroundColor "#803AE8CE" -HoverBackgroundColor "#16BFF9" -BorderColor "black" -HoverBorderColor "black" -BorderWidth 1
                    New-UDChartDataset -DataProperty "ONLINE" -Label "ONLINE"   -BackgroundColor "#8014558C" -HoverBackgroundColor "#42BC09" -BorderColor "black" -HoverBorderColor "black" -BorderWidth 1
                    
                
                
                )
            
            
            
            }
            } 
    } 

            

} 

            

     
     
     

    