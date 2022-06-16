(@(&"oh-my-posh" init powershell --config="/home/ibiernacki/.ohmyposh" --print) -join "`n") | Invoke-Expression

Import-Module -Name Terminal-Icons
Import-Module PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
Set-PSReadLineKeyHandler -Chord Shift+Spacebar -Function MenuComplete