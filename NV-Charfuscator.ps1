#    Powershell Obfuscation - Charfuscator
#    Copyright (C)2024 Noverse
#
#    This program is proprietary software: you may not copy,redistribute,or modify
#    it in any way without prior written permission from Noverse.
#
#    Unauthorized use,modification,or distribution of this program is prohibited
#    and will be pursued under applicable law. This software is provided "as is,"
#    without warranty of any kind,express or implied,including but not limited to
#    the warranties of merchantability,fitness for a particular purpose,and
#    non-infringement.
#
#    For permissions or inquiries,contact: https://discord.gg/E2ybG4j9jU
#
#    Usage example: . .\NV-Charfuscator.ps1;char -nvi".\Test.ps1" -nvo ".\Char.ps1" -iterations 1
#
#    Minfied with NV-PSMinifier - https://discord.com/channels/836870260715028511/1312093573730140252/1312401925299245117 ;D

$NV = @"
# Created by Noxi-Hu! - Copyright (C) 2024 Noverse
"@

sv -Scope Global -Name "ErrorActionPreference" -Value "SilentlyContinue"
$Host.UI.RawUI.BackgroundColor="Black"
$Host.UI.RawUI.WindowTitle="Noxi's Powershell Obfuscation - Charfuscator"
cls
function log{param([string]$HighlightMessage,[string]$Message,[string]$Sequence,[ConsoleColor]$TimeColor='DarkGray',[ConsoleColor]$HighlightColor='White',[ConsoleColor]$MessageColor='White',[ConsoleColor]$SequenceColor='White')
$time=" [{0:HH:mm:ss}]" -f(Get-Date)
Write-Host -ForegroundColor $TimeColor $time -NoNewline
Write-Host -NoNewline " "
Write-Host -ForegroundColor $HighlightColor $HighlightMessage -NoNewline
Write-Host -ForegroundColor $MessageColor " $Message" -NoNewline
Write-Host -ForegroundColor $SequenceColor " $Sequence"}
function banner{clear
echo ""
echo ""
Write-Host -ForegroundColor DarkBlue "              ░░░     ░░░   ░░░░░░░░░░░   ░░░     ░░░   ░░░░░░░░░░   ░░░░░░░░░░    ░░░░░░░░░░   ░░░░░░░░░░"
Write-Host -ForegroundColor DarkBlue "              ░░░░    ░░░   ░░░     ░░░   ░░░     ░░░   ░░░          ░░░     ░░░   ░░░          ░░░"
Write-Host -ForegroundColor Blue     "              ▒▒▒▒▒   ░▒▒   ▒░░     ░░▒   ▒░░     ░░▒   ░░░          ▒░░     ▒▒░   ░░░          ░░░"
Write-Host -ForegroundColor Blue     "              ▒▒▒ ▒▒▒ ▒▒▒   ▒▒░     ░▒▒   ▒▒░     ░▒▒   ▒▒▒▒▒▒▒▒     ▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒▒▒   ▒▒▒▒▒▒▒▒"
Write-Host -ForegroundColor Blue     "              ▒▒▒   ▒▒▒▒▒   ▒▒▒     ▒▒▒    ▒▒▒   ▒▒▒    ▒▒▒          ▒▓▓     ▓▓▒          ▒▒▒   ▒▒▒"
Write-Host -ForegroundColor DarkCyan "              ▒▓▓    ▓▓▓▒   ▓▓▓     ▓▓▓     ▒▓▓ ▓▓▒     ▓▓▓          ▓▓▓     ▓▓▓          ▓▓▓   ▓▓▓"
Write-Host -ForegroundColor DarkCyan "              ▓▓▓     ▓▓▓   ▓▓▓▓▓▓▓▓▓▓▓       ▓▓▓       ▓▓▓▓▓▓▓▓▓▓   ▓▓▓     ▓▓▓   ▓▓▓▓▓▓▓▓▓▓   ▓▓▓▓▓▓▓▓▓▓"
echo ""
Write-Host "‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗‗" -ForegroundColor DarkGray
echo ""
echo ""}
function random{param([char]$char)
if ($NV -notmatch '\!\*') {$null=$null}else{exit}
$charv=[int][char]$char
switch (Get-Random -Minimum 1 -Maximum 3){1{return "[char]$charv"}2{$r=Get-Random -Min 1 -Max 50;return "[char]($charv+$r-$r)"}3{$r=Get-Random -Min 1 -Max 32;return "[char]($charv-bxor$r-bxor$r)"}}}    
function char{param([Parameter(Mandatory=$true)]
[string]$nvi,[Parameter(Mandatory=$true)]
[string]$nvo,[int]$iterations=1)
banner
if(-not(Test-Path $nvi)){log "[!]" "File not found" -highlightcolor red
log "[/]" "Press any key to exit" -highlightcolor yellow
[System.Console]::ReadKey()> $null
exit}
log "[~]" "Reading content from" "$nvi" -highlightcolor gray -sequencecolor yellow
if ($NV -notmatch '\!\*') {$null=$null}else{exit}
$script=cat -Path $nvi -Raw
$obfuscated=@()
log "[?]" "Starting obfuscation with $iterations iterations" -highlightcolor magenta
for ($i=1; $i -le$iterations; $i++){log "[~]" "Starting layer $i" -highlightcolor gray
foreach($char in $script.ToCharArray()){$obfuscated +=random $char}
$final="iex($($obfuscated -join'+'))"
log "[*]" "Layer obfuscated" -highlightcolor blue}
log "[~]" "Writing obfuscated content to" "$nvo" -highlightcolor gray -sequencecolor yellow
if ("$NV" -notlike "*!*") { kill -Id $PID }
$final | Out-File -FilePath $nvo -Encoding UTF8
log "[+]" "Done" -highlightcolor green
sleep -milliseconds 100
log "[/]" "Press any key to exit" -highlightcolor yellow
[System.Console]::ReadKey()> $null
exit}
