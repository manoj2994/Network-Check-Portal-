
New-UDPage -Name "Escalation Matrix" -Icon newspaper_o -Content {


   
 New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "zzzzz Team" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "xxxxx" = "xxxxx"

                "yyyyyy" = "yyyyyy"
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}
        
        
  New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "xxx Team" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "Vinoth" = "588590"

                "Selva" = "1257579"

                "Mary Jain" = "1247881"
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}
       
        
    New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "yyy Team" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "Karthikeyan" = "1305398"

                "Resedha" = "1306923"

                
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}

    
    New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "www Team" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "Raj Kumar" = "866681"

                 "Sakthi"  =  "1073409"

                
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}  


    New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "jjj Team" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "Vinoth" = "1069350"

                 

                
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}  


    New-UDCollapsible -Items {
    
    New-UDCollapsibleItem -Title "ISLAB" -Icon arrow_circle_right -Content {
         
        New-UDTable -Title "Spoc Details" -Headers @(" "," ") -Endpoint {
        
        
            @{

            
                "Manoj" = "1295789"

                "Renuka" = "1299997"

                 

                
            
            }.GetEnumerator() | Out-UDTableData -Property @("Name","Value")
        
        
        
        }
        
    }
}  
        
        
  }      
        
        
        
        
    
    
    
    




