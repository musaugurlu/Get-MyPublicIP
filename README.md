# Get-MyPublicIP
Get your public ip address with one command in powershell

## DESCRIPTION 
 Shows your public ip and copies it to clipbord(with -Copy switch), So you can paste it anywhere you want.

 * Credit: https://gallery.technet.microsoft.com/scriptcenter/Get-ExternalPublic-IP-c1b601bb

## PARAMETER Copy
Copy your public ip to clipboard. So you can "CTRL+V" your ip to whereever you want

## PARAMETER Hostname
Adds hostname information to the output

## PARAMETER City
Adds city information to the output

## PARAMETER Region
Adds region information to the output

## PARAMETER Country
Adds country information to the output

## PARAMETER Location
Adds location information to the output(Latitude, Longitute)

## PARAMETER Organization
Adds organization information to the output

## PARAMETER Zip
Adds postal code information to the output

## EXAMPLE
`Get-MyPublicIP`

## EXAMPLE
`Get-MyPublicIP -Hostname`

## EXAMPLE
`Get-MyPublicIP -Hostname -Zip -City`

## EXAMPLE
Get-MyPublicIP -Hostname -Zip -City -Copy
