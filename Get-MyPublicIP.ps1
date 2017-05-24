
<#PSScriptInfo

.VERSION 1.0

.GUID 5ee7c561-595b-4a10-9d92-171f1a3e5273

.AUTHOR Musa Ugurlu

.COMPANYNAME 

.COPYRIGHT 

.TAGS 

.LICENSEURI https://raw.githubusercontent.com/musaugurlu/Get-MyPublicIP/master/LICENSE

.PROJECTURI https://github.com/musaugurlu/Get-MyPublicIP

.ICONURI 

.EXTERNALMODULEDEPENDENCIES 

.REQUIREDSCRIPTS 

.EXTERNALSCRIPTDEPENDENCIES 

.RELEASENOTES


#>

<# 

.DESCRIPTION 
 Get Your Public IP

 Credit: https://gallery.technet.microsoft.com/scriptcenter/Get-ExternalPublic-IP-c1b601bb

.PARAMETER Hostname
Adds hostname information to the output

.PARAMETER City
Adds city information to the output

.PARAMETER Region
Adds region information to the output

.PARAMETER Country
Adds country information to the output

.PARAMETER Location
Adds location information to the output(Latitude, Longitute)

.PARAMETER Organization
Adds organization information to the output

.PARAMETER Zip
Adds postal code information to the output

.EXAMPLE
Get-MyPublicIP

.EXAMPLE
Get-MyPublicIP -Hostname

.EXAMPLE
Get-MyPublicIP -Hostname -Zip -City

#> 

param(
        [switch] $HostName,
        [switch] $City,
        [switch] $Region,
        [switch] $Country,
        [switch] $Location,
        [switch] $Organization,
        [switch] $Zip
)
$IpInfo = Invoke-RestMethod http://ipinfo.io/json 
    
$IpOutput = New-Object -TypeName psobject
    
$IpOutput | Add-Member -NotePropertyName "IP" -NotePropertyValue $IpInfo.ip

if($HostName) {
    $IpOutput | Add-Member -NotePropertyName "HostName" -NotePropertyValue $IpInfo.hostname    
}

if($City) {
    $IpOutput | Add-Member -NotePropertyName "City" -NotePropertyValue $IpInfo.city
}

if($Region) {
    $IpOutput | Add-Member -NotePropertyName "Region" -NotePropertyValue $IpInfo.region
}

if($Country) {
    $IpOutput | Add-Member -NotePropertyName "Country" -NotePropertyValue $IpInfo.country
}

if($Location) {
    $IpOutput | Add-Member -NotePropertyName "Location" -NotePropertyValue $IpInfo.loc
}

if($Organization) {
    $IpOutput | Add-Member -NotePropertyName "Organization" -NotePropertyValue $IpInfo.org
}

if($Zip) {
    $IpOutput | Add-Member -NotePropertyName "Zip" -NotePropertyValue $IpInfo.postal
}
  
Write-Output $IpOutput