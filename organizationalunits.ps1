# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com" to match your domain and update the ST initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name RS_Computers -Path "DC=AD,DC=sheets,DC=com" -Description "RS_Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
 New-ADOrganizationalUnit -Name Servers -Path "OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=RS_Computers,DC=AD,DC=sheets,DC=com"
New-ADOrganizationalUnit -Name RS_Groups -Path "DC=AD,DC=sheets,DC=com" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name RS_Privileged_Accounts -Path "DC=AD,DC=sheets,DC=com" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name RS_Users -Path "DC=AD,DC=sheets,DC=com" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=RS_Groups,DC=AD,DC=sheets,DC=com"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
