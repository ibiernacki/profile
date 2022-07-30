if (!(Get-InstalledModule Terminal-Icons)) 
{
    Install-Module -Name Terminal-Icons -Repository PSGallery -Force
}


if (!(Get-InstalledModule PSReadLine))
{
    Install-Module PSReadLine -AllowPrerelease -Force -AcceptLicense
}


Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineKeyHandler -Chord Shift+Spacebar -Function MenuComplete


$winhome = "/mnt/c/Users/ignac"


oh-my-posh --init --shell pwsh --config ~/oh-my-posh.json | Invoke-Expression