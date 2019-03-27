# The Network Check Portal
  
  This is Currently using in Production Environment
  
  Network Check Portal is an Easy and extensible Dashboard which will give you status of the servers that are online and offline by using **ICMP**.You can even run from the portal to check current status of the servers.with extensible options in universal dashboard module you can view results in grid format with colours in the status as offline as red and online as green.Not only you can view the current status but also you can view the history of other time status.last but not least you can export the server status details in csv format.

  Thanks to Adam Driscoll who made this beautiful Universal Dashboard Framwork without that it wouldnt be possible,check out for more infoemation about the Universal Dashboard [here](https://poshud.com/Home)


# Technologies
Universal Dashboard Universal Dashboard is a module made by Adam Driscoll which allows for the easy creation of webpages using PowerShell.

This Fully developed with Powershell Modules and scripts.

# Prerequisites
Required

- PowerShell 5.1 or greater or PowerShell Core 6.1 or greater
- .NET Framework 4.7.2 (for Powershell -> https://dotnet.microsoft.com/download/thank-you/net472)

# Starting the Dashboard
From a PowerShell Prompt:

Install Universal Dashboard Install-Module -Name UniversalDashboard -AcceptLicense -Confirm or you can download community edition which is free.

Pass the data of your servers in the file test.csv ,you can rename it as you wish .but make sure to rename in the pages also,so that it will work properly.

Launch Dashboard ./main.ps1

Alon with this a Test-Ping Module is ter ,the page has the option to trigger it manually ,you can make it run in a frequency of interval period,for an live status

# Further Enchanments

Currently it is storing its server details in csv file ,iam working on this part to migrate these csv into sqlite so it can work as fulltime database along with that more datas can be stored and processed very easily.

# Images

![Home Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/h.PNG)

![Home Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/h2.PNG)

![Index Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/3.PNG)

![Server Details Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/4.PNG)

![History Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/5.PNG)

![Help Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/6.PNG)

![other Page](https://github.com/manoj2994/Network-Check-Portal-/blob/master/Pictures/7.PNG)






