





New-UDPage -Name "Results"  -Icon bell  -Content {
                

                    
                    New-UDRow {
                        
                        New-UDColumn -Size 12 {
               
        
           

            New-UDGrid -Title "Server Details" -Headers @("Name","IP","Domain","STATUS") -Properties @("Name" ,"IP","DM","ST") -Endpoint {
            
                
                        $Data1 = Import-Csv "C:\Users\Administrator\Desktop\POSHUD\ISLAB_TEST_PING - Copy.csv"
                        
                        $dataobj = @()
                        
                        $Data1 | % {
                                        
                                    $BgColor = 'green'
                                        $FontColor = 'white'
                                         if ($_."$((($Data1 | gm -MemberType NoteProperty ).Name)[-1])" -eq 'OFFLINE') {
                                            $BgColor = 'red'
                                            $FontColor = 'white'
                                          }
            
                                        $data = [ordered]@{
            
                                                                "Name" = ($_."Computer Name")
                                                                "IP"   = ($_."IP ADDRESS")
                                                                "DM"   = ($_."Domain")
                                                                "ST"   =  New-UDElement -Tag 'div' -Attributes @{ style = @{ 'backgroundColor' = $BgColor; 'color' = $FontColor}  } -Content { $_."$((($Data1 | gm -MemberType NoteProperty ).Name)[-1])" }
            
            
            
                                               }

                                        $dataobj += @(New-Object PSObject -Property $data)
                
                
                
                
               }

               $dataobj | Out-UDGridData
               Clear-Variable -Name data,dataobj,Data1

        }
    } 

                

    }   
    
    
    
                    New-UDRow {
                
                New-UDColumn -Size 3 {
                
                
                    New-UDCard -Title "Check-Ping ?" -Content {
                    
                    
                        New-UDLink -Text "Click Here" -Icon arrow_right -Url '/Run-Now'
                    
                    
                    } -Size small
                
                
                
                }
                
                New-UDColumn -size 3 {
                
                    New-UDCard -Title "DashBoards ?" -Content {
                    
                    
                        New-UDLink -Text "Click Here!!" -Icon arrow_right -Url "/Home"
                    
                    
                    } -Size small
                
                
                
                
                }

                New-UDColumn -Size 3 {
                
                    New-UDCard -Title "Escalation Matrix?" -Content {
                    
                        New-UDlink -Text "Click Here!!" -Icon arrow_right -Url "/Escalation-Matrix"
                    
                    } -Size small
                
                } 

                New-UDColumn -Size 3 {
                
                    New-UDCard -Title "Issues ?" -Content {
                    
                        New-UDlink -Text "Click Here" -Icon ambulance -Url "/Help"
                    } -Size small
                
                }  
                
                }         
                
                
          }    





