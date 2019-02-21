#Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

#Assign Packages to Install
$Packages = 'nodejs.install',`
            'jre8',`
            'dotnetcore-sdk',`
            'netfx-4.7.1-devpack'

#Install Packages
ForEach ($PackageName in $Packages)
{choco install $PackageName -y}

