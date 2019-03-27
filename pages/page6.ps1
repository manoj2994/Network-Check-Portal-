New-UDPage -Name "Help" -Icon question -Content {

    New-UDCard -Title "ISSUES" -Content {
    
    
      "Facing any issues regarding fetching details or accessing the portal please find the contact below inorder to Solve"    
    
    
    
    }

     New-UDCollection -Content {
                    New-UDCollectionItem -Content { "EMP ID: xxxxx" }
                    New-UDCollectionItem -Content { "Mail ID: xxxxxx@yyy.com" }
                    New-UDCollectionItem -Content { "Phone no: xxxxxxxx" }
                    New-UDCollectionItem -Content { "Buzz: xxxxxxx" }
                } -Header "Manoj Krishnasamy"




}


