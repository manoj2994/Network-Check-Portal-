


   


New-UDPage  -Name "Run Now" -Icon bicycle -Content {




           New-UDInput -Title "Check-Ping" -Endpoint {
            
                param([bool]$check_me)

                if ($check_me) {
                 
                
                    New-UDInputAction -Toast "Completed Ping Check !!!!" 
                
                    New-UDInputAction -Content @(
                    
                    New-UDRow {
                        
                        New-UDColumn -Size 12 {
               
                                
                         $(Unblock-File "C:\Users\Administrator\Desktop\POSHUD\Test-Ping.psm1")

                         $(Import-Module  "C:\Users\Administrator\Desktop\POSHUD\Test-Ping.psm1")

                         $(Test-Ping)

                         $(Remove-Module -Name Test-Ping)
                
                       

                                        
            
            }

        }
    

                New-UDRow {
                
                New-UDColumn -Size 3 {
                
                
                    New-UDCard -Title "Test Completed Run again ?" -Content {
                    
                    
                        New-UDLink -Text "Click Here" -Icon arrow_right -Url '/Run-Now'
                    
                    
                    } -Size small
                
                
                
                }
                
                New-UDColumn -size 3 {
                
                    New-UDCard -Title "View Results ?" -Content {
                    
                    
                        New-UDLink -Text "Click Here!!" -Icon arrow_right -Url "/Results"
                    
                    
                    } -Size small
                
                
                
                
                }

                New-UDColumn -Size 3 {
                
                    New-UDCard -Title "Escalation Matrix" -Content {
                    
                        New-UDlink -Text "Click Here!!" -Icon arrow_right -Url "/Escalation-Matrix"
                    
                    } -Size small
                
                } 

                New-UDColumn -Size 3 {
                
                    New-UDCard -Title "Need Help ?" -Content {
                    
                        New-UDlink -Text "Click Here" -Icon ambulance -Url "/Help"
                    } -Size small
                
                }  
                
                }

    )


        } else {
            New-UDInputAction -Toast "No Actions checked"
            
            New-UDInputAction -Content @(
        
            New-UDCard -Size small -Title "No options selected" -Text "Nothing to Show"  -Watermark star_half_empty
                        New-UDRow {
                
                New-UDColumn -Size 12 {
                
                
                    New-UDCard -Size large -Title "Need To Run Network Check?" -Content {
                    
                    
                        New-UDLink -Text "Click Here" -Icon hand_pointer_o -Url '/Run_Now' 
                    
                     
                    } 
                
                
                
                }
                
                
                
                }

    )
        }
    } 



} 



