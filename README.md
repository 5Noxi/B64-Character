# Charfuscator
Takes a single string as input and converts it to a character array.

## How it works:
1. Gets content of input
2. Obfuscates content - replaces each character in the script with an obfuscated equivalent ([char])
3. 
   ```
   & iex(char...)
   ```
4. Repeats (iterations)

## Example:
Before:
```ps
write-host "noverse"
```
After:
```ps
& ([char]((2523 - 2614 - 4746 + 4910))+[char](((-11723 -Band 2744) + (-11723 -Bor 2744) + 5845 + 3212))+[char]((11829 - 7353 + 2004 - 6394))+[char](((-14684 -Band 1130) + (-14684 -Bor 1130) + 5795 + 7838))+[char](((7790 -Band 1401) + (7790 -Bor 1401) - 5316 - 3800))+[char](((-7002 -Band 6060) + (-7002 -Bor 6060) + 3195 - 2184))+[char](((-14009 -Band 471) + (-14009 -Bor 471) + 4103 + 9480))+[char](((-13817 -Band 3144) + (-13817 -Bor 3144) + 4911 + 5831))+[char](((-16107 -Band 2812) + (-16107 -Bor 2812) + 8813 + 4570))+[char](((-4302 -Band 1864) + (-4302 -Bor 1864) + 3535 - 1017))+[char]((10571 - 7774 - 7320 + 4605))+[char]((10896 - 84 - 4290 - 6453))+[char](((-5952 -Band 7714) + (-5952 -Bor 7714) - 556 - 1123))+[char]((6883 - 4942 + 6048 - 7906))+[char](((6261 -Band 7411) + (6261 -Bor 7411) - 9728 - 3871))+[char](((-16021 -Band 9058) + (-16021 -Bor 9058) + 5225 + 1817))+[char](((-9394 -Band 3249) + (-9394 -Bor 3249) + 5744 + 479)))([char]87+[char]114+[char]105+[char]116+[char]101+[char]45+[char]72+[char]111+[char]115+[char]116+[char]32+[char]34+[char]110+[char]111+[char]118+[char]101+[char]114+[char]115+[char]101+[char]34)
```
First part is the obfuscated `iex` command, second part is `write-host "noverse"` written with chars. It get's directly executed by using `& iex(code)`.

## Features 
- [Character](https://www.rapidtables.com/code/text/ascii-table.html) obfuscation
- Randomized predefined obfuscated `iex` command
- Adjustable iterations (default is `1`)

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-Charfuscator.ps1;char -nvi".\Test.ps1" -nvo ".\Char.ps1" -iterations 1`

### Preview
![charpre](https://github.com/5Noxi/Charfuscator/blob/main/charfuscator.png?raw=true)
**Before & after:**
![before](https://github.com/5Noxi/Charfuscator/blob/main/before.png?raw=true) 
![after](https://github.com/5Noxi/Charfuscator/blob/main/after.png?raw=true)

## Disclaimer
**I take no responsibility for the abuse of this tool.**

## Discord Server 
- https://discord.gg/E2ybG4j9jU
