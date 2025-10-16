if (-not (Get-Module -ListAvailable -Name ps2exe)) {
    Install-Module -Name ps2exe -Force -Scope CurrentUser
}

if (-not (Get-Module -ListAvailable -Name win-ps2exe)) {
    Install-Module -Name win-ps2exe -Force -Scope CurrentUser
}

win-ps2exe
