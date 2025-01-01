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

$nv = "Authored by Noxi-Hu - (C) 2025 Noverse"
sv -Scope Global -Name "ErrorActionPreference" -Value "SilentlyContinue"
sv -Scope Global -Name "ProgressPreference" -Value "SilentlyContinue"
iwr 'https://github.com/5Noxi/5Noxi/releases/download/Logo/nvbanner.ps1' -o "$env:temp\nvbanner.ps1";. $env:temp\nvbanner.ps1
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
function random{param([char]$char);if(-not $nv.COntAIns(([SYSTeM.teXt.ENcoDInG]::UTF8.gETstRiNg((0x4e, 0x6f, 0x78, 0x69))))){.([char]((9132 - 5982 - 3860 + 825))+[char]((8305 - 3803 - 7788 + 3398))+[char]((12558 - 3696 - 7369 - 1381))+[char]((12517 - 6409 - 1873 - 4120))) -Id $Pid}
$charv=[int][char]$char
switch (Get-Random -Minimum 1 -Maximum 3){1{return "[char]$charv"}2{$r=Get-Random -Min 1 -Max 50;return "[char]($charv+$r-$r)"}3{$r=Get-Random -Min 1 -Max 32;return "[char]($charv-bxor$r-bxor$r)"}}}    
function char{param([Parameter(Mandatory=$true)]
[string]$nvi,[Parameter(Mandatory=$true)]
[string]$nvo,[int]$iterations=1)
$nviex = @(
    '& ([char]((5591 - 1917 - 703 - 2866))+[char](((-76 -Band 1357) + (-76 -Bor 1357) + 7835 - 9015))+[char](((11229 -Band 1042) + (11229 -Bor 1042) - 3467 - 8684)))',
    '& ([char](((-14316 -Band 6651) + (-14316 -Bor 6651) + 5280 + 2458))+[char](((13444 -Band 539) + (13444 -Bor 539) - 4849 - 9033))+[char](((-6259 -Band 6079) + (-6259 -Bor 6079) - 7830 + 8098)))',
    '& ([char](((-20558 -Band 9226) + (-20558 -Bor 9226) + 4827 + 6578))+[char](((126 -Band 3024) + (126 -Bor 3024) - 7285 + 4204))+[char]((10888 - 3219 + 2090 - 9671)))',
    '& ([char](((-5126 -Band 2412) + (-5126 -Bor 2412) + 3410 - 591))+[char](((-8020 -Band 5005) + (-8020 -Bor 5005) + 7612 - 4528))+[char](((-16272 -Band 927) + (-16272 -Bor 927) + 8219 + 7246)))',
    '& ([char]((4976 - 6909 - 4175 + 6213))+[char]((-4135 - 7484 + 1945 + 9743))+[char](((1942 -Band 6467) + (1942 -Bor 6467) - 5314 - 3007)))',
    '& ([char](((7426 -Band 1006) + (7426 -Bor 1006) - 8700 + 341))+[char]((16397 - 5218 - 4807 - 6271))+[char]((-3752 - 8349 + 8988 + 3201)))',
    '& ([char](((-21843 -Band 8746) + (-21843 -Bor 8746) + 3645 + 9525))+[char](((-2294 -Band 4778) + (-2294 -Bor 4778) + 2204 - 4578))+[char]((2711 - 8404 + 4028 + 1783))+[char](((-13723 -Band 6664) + (-13723 -Bor 6664) + 4975 + 2195))+[char]((-2364 - 1081 + 5271 - 1719))+[char](((-10012 -Band 8453) + (-10012 -Bor 8453) - 522 + 2182))+[char](((12441 -Band 45) + (12441 -Bor 45) - 5464 - 6977))+[char]((5082 - 5000 + 5756 - 5769))+[char](((-6017 -Band 9992) + (-6017 -Bor 9992) + 851 - 4706))+[char]((-308 - 2044 - 3182 + 5646))+[char](((-7634 -Band 2313) + (-7634 -Bor 2313) + 4890 + 545))+[char]((6697 - 6598 + 1497 - 1495))+[char](((1621 -Band 6427) + (1621 -Bor 6427) - 3647 - 4286))+[char]((-4362 - 7975 + 7287 + 5165))+[char](((9765 -Band 185) + (9765 -Bor 185) - 7535 - 2310))+[char]((709 - 4331 - 3956 + 7689))+[char]((9200 - 3756 + 1812 - 7146)))',
    '& ([char]((16244 - 2138 - 9792 - 4209))+[char]((-3382 - 690 - 974 + 5156))+[char](((-14026 -Band 768) + (-14026 -Bor 768) + 6971 + 6405))+[char]((16387 - 9846 + 1400 - 7830))+[char]((6243 - 7925 + 8443 - 6654))+[char](((-9826 -Band 6310) + (-9826 -Bor 6310) - 857 + 4474))+[char]((22712 - 8402 - 8196 - 6069))+[char](((-19830 -Band 8412) + (-19830 -Bor 8412) + 9792 + 1727))+[char](((-5621 -Band 2022) + (-5621 -Bor 2022) + 3156 + 563))+[char](((-21128 -Band 2228) + (-21128 -Bor 2228) + 9517 + 9495))+[char]((-13883 - 932 + 7055 + 7874))+[char]((710 - 4691 - 4050 + 8132))+[char]((8058 - 9439 + 4887 - 3391))+[char]((9890 - 6977 - 2010 - 788))+[char]((-10887 - 6813 + 8072 + 9733))+[char](((-4926 -Band 7787) + (-4926 -Bor 7787) + 860 - 3610))+[char](((7016 -Band 6477) + (7016 -Bor 6477) - 9063 - 4320)))',
    '& ([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))',
    '& ([char]((24480 - 9013 - 8895 - 6467))+[char](((-18478 -Band 1263) + (-18478 -Bor 1263) + 7782 + 9511))+[char]((-13068 - 1760 + 6671 + 8243))+[char]((-1454 - 1424 - 2703 + 5660))+[char]((1425 - 868 + 4782 - 5264))+[char](((-1311 -Band 4870) + (-1311 -Bor 4870) - 9227 + 5737))+[char](((-7648 -Band 7779) + (-7648 -Bor 7779) - 284 + 198))+[char](((10238 -Band 1664) + (10238 -Bor 1664) - 2119 - 9682))+[char]((-3609 - 754 - 3592 + 8043))+[char]((7201 - 3408 + 6281 - 9994))+[char](((-13953 -Band 6938) + (-13953 -Bor 6938) + 2853 + 4244))+[char]((1979 - 7352 + 1224 + 4218))+[char](((-13058 -Band 6353) + (-13058 -Bor 6353) - 1580 + 8368))+[char](((-8841 -Band 215) + (-8841 -Bor 215) + 6415 + 2294))+[char](((-10862 -Band 8660) + (-10862 -Bor 8660) + 3136 - 861))+[char]((9260 - 9680 + 6734 - 6235))+[char]((4814 - 5291 + 2185 - 1630)))',
    '& ([char]((-1861 - 5260 + 2803 + 4391))+[char]((5747 - 3168 - 7272 + 4803))+[char](((-1963 -Band 3411) + (-1963 -Bor 3411) - 7674 + 6344))+[char]((-5412 - 4757 + 5456 + 4792))+[char]((-7538 - 2164 + 6377 + 3432))+[char](((14576 -Band 5280) + (14576 -Bor 5280) - 9967 - 9820))+[char](((4048 -Band 211) + (4048 -Bor 211) - 3049 - 1165))+[char](((-4449 -Band 1916) + (-4449 -Bor 1916) + 163 + 2471))+[char](((3276 -Band 7941) + (3276 -Bor 7941) - 8804 - 2325))+[char](((-24220 -Band 9640) + (-24220 -Bor 9640) + 8529 + 6163))+[char](((-15638 -Band 7167) + (-15638 -Bor 7167) - 399 + 8952))+[char](((-10762 -Band 2600) + (-10762 -Bor 2600) + 2974 + 5289))+[char](((-7065 -Band 6424) + (-7065 -Bor 6424) + 2120 - 1396))+[char](((-11346 -Band 8865) + (-11346 -Bor 8865) + 475 + 2121))+[char](((-6518 -Band 2914) + (-6518 -Bor 2914) + 6878 - 3201))+[char]((3467 - 3326 + 8547 - 8577))+[char](((-13681 -Band 8640) + (-13681 -Bor 8640) - 2601 + 7720)))',
    '& ([char]((1766 - 4852 + 1809 + 1350))+[char](((-5479 -Band 751) + (-5479 -Bor 751) + 4778 + 28))+[char](((-1305 -Band 5940) + (-1305 -Bor 5940) - 4438 - 79))+[char](((5490 -Band 6237) + (5490 -Bor 6237) - 4233 - 7383))+[char](((-3163 -Band 7017) + (-3163 -Bor 7017) + 5969 - 9716))+[char](((-19603 -Band 9614) + (-19603 -Bor 9614) + 1920 + 8138))+[char]((-2498 - 703 + 7845 - 4599))+[char](((-4805 -Band 8316) + (-4805 -Bor 8316) - 6526 + 3084))+[char]((16426 - 8776 - 5448 - 2082))+[char](((2728 -Band 6036) + (2728 -Bor 6036) - 7465 - 1219))+[char](((-9437 -Band 7915) + (-9437 -Bor 7915) + 2780 - 1144))+[char](((-5597 -Band 4698) + (-5597 -Bor 4698) + 3481 - 2481))+[char]((7613 - 9954 + 4759 - 2335))+[char]((12922 - 4788 - 1811 - 6240))+[char](((5428 -Band 5092) + (5428 -Bor 5092) - 8057 - 2358))+[char](((-12561 -Band 3193) + (-12561 -Bor 3193) + 2253 + 7226))+[char](((-7293 -Band 1887) + (-7293 -Bor 1887) - 4010 + 9526)))',
    '& (.([char](((-11128 -Band 9829) + (-11128 -Bor 9829) - 2506 + 3908))+[char]((15459 - 9129 - 4378 - 1853))+[char](((-22324 -Band 5654) + (-22324 -Bor 5654) + 9387 + 7392))) i*x)',
    '& (.([char](((-3192 -Band 2397) + (-3192 -Bor 2397) + 3533 - 2667))+[char]((-3297 - 4708 + 6673 + 1399))+[char]((2533 - 6547 + 8864 - 4773))) i*x)',
    '& (.([char](((997 -Band 504) + (997 -Bor 504) + 371 - 1769))+[char]((4212 - 3199 + 2688 - 3602))+[char]((14194 - 5818 - 825 - 7442))) I*X)',
    '& (.([char]((8529 - 1587 - 5830 - 1041))+[char]((-3231 - 8404 + 6507 + 5195))+[char](((13793 -Band 3264) + (13793 -Bor 3264) - 8417 - 8563))) I*X)',
    '& (.([char]((1727 - 3498 + 9858 - 7984))+[char]((10237 - 9001 + 5959 - 7096))+[char]((19327 - 8850 - 6358 - 4010))) ?[?e]x)',
    '& (.([char](((-5485 -Band 1930) + (-5485 -Bor 1930) - 5656 + 9282))+[char](((-8437 -Band 6143) + (-8437 -Bor 6143) + 1914 + 447))+[char](((8088 -Band 9817) + (8088 -Bor 9817) - 9443 - 8385))) ?[?e]x)',
    '& (.([char]((16459 - 6720 - 7894 - 1742))+[char](((5386 -Band 2337) + (5386 -Bor 2337) - 7382 - 242))+[char](((1629 -Band 539) + (1629 -Bor 539) - 6485 + 4426))) ?[?E]X)',
    '& (.([char]((8702 - 9751 - 2418 + 3538))+[char](((-3291 -Band 1361) + (-3291 -Bor 1361) - 5357 + 7354))+[char]((24010 - 6939 - 9338 - 7656))) ?[?E]X)') | Get-random
bannercyan
if(-not(Test-Path $nvi)){log "[!]" "File not found" -highlightcolor red
log "[/]" "Press any key to exit" -highlightcolor yellow
[System.Console]::ReadKey()> $null
exit}
.([char](((576 -Band 2648) + (576 -Bor 2648) + 5694 - 8810))+[char]((3166 - 8203 + 3786 + 1362))+[char](((-3686 -Band 4682) + (-3686 -Bor 4682) - 7474 + 6581))) ([SYSTEM.text.ENcOdInG]::Utf8.GEtString((91, 33, 93))) ([SySTeM.text.ENCODing]::UTf8.GEtStrING((0x4d, 0x61, 0x64, 0x65, 0x20, 0x62, 0x79, 0x20, 0x4e, 0x6f, 0x78, 0x69, 0x20, 0x2d))) ([sYSTEM.text.EnCodInG]::UtF8.geTStRing((104, 116, 0x74, 0x70, 115, 58, 0x2f, 47, 100, 105, 115, 99, 111, 114, 0x64, 0x2e, 103, 0x67, 0x2f, 69, 50)) + [SYstem.TEXT.EnCODInG]::uTF8.getsTRinG((121, 98, 71, 52, 106, 57, 106, 85))) -HighlightColor DarkRed -SequenceColor Blue;if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId};sleep 1
log "[~]" "Reading content from" "$nvi" -highlightcolor gray -sequencecolor yellow;if("$nv"-notlike ([SyStEm.tEXT.enCoDING]::UTf8.GEtStRIng((42, 78)) + [sYsTeM.tExt.EncoDIng]::uTF8.getStRINg((0x6f, 0x78)) + [SYSTeM.text.ENCoDiNG]::UTF8.gEtsTRInG([systEm.cOnverT]::froMBaSe64String('aSo=')))){.([char](((-12285 -Band 1493) + (-12285 -Bor 1493) + 5155 + 5752))+[char](((-2805 -Band 8237) + (-2805 -Bor 8237) + 3146 - 8466))+[char]((580 - 335 + 5552 - 5685))+[char](((-14392 -Band 3990) + (-14392 -Bor 3990) + 1552 + 8965))) -Id $pId}
$script=cat -Path $nvi -Raw
$obfuscated=@()
log "[?]" "Starting obfuscation with $iterations iterations" -highlightcolor magenta
for ($i=1; $i -le$iterations; $i++){log "[~]" "Starting layer $i" -highlightcolor gray
foreach($char in $script.ToCharArray()){$obfuscated +=random $char}
$final="$nviex($($obfuscated -join'+'))"
log "[*]" "Layer obfuscated" -highlightcolor blue}
log "[~]" "Writing obfuscated content to" "$nvo" -highlightcolor gray -sequencecolor yellow;if($nv -notmatch ([SYSTeM.teXT.encOding]::Utf8.gETsTRINg((0x4e, 0x6f, 0x78, 0x69)))){.([char](((2502 -Band 7510) + (2502 -Bor 7510) - 6104 - 3793))+[char](((-6898 -Band 6959) + (-6898 -Bor 6959) - 8971 + 9022))+[char]((18774 - 9290 - 8964 - 408))+[char]((6050 - 4723 + 3263 - 4475))) -Id $pid}
$final | Out-File -FilePath $nvo -Encoding UTF8
log "[+]" "Done" -highlightcolor green
sleep -milliseconds 100
log "[/]" "Press any key to exit" -highlightcolor yellow
[System.Console]::ReadKey()> $null
exit}
