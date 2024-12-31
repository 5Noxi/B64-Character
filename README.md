# Charfuscator
Takes a single character as input and returns an obfuscated representation of that character using randomized arithmetic or bitwise operations.
![charpre](https://github.com/5Noxi/Charfuscator/blob/main/NV-Char.png?raw=true)
### Before
![before](https://github.com/5Noxi/Charfuscator/blob/main/Before.png?raw=true) 
### After
![after](https://github.com/5Noxi/Charfuscator/blob/main/After.png?raw=true)

## Discord Server 
- https://discord.gg/E2ybG4j9jU

## How it works
1. Gets content of input
2. Obfuscates content - replaces each character in the script with an obfuscated equivalent ([char])
3. Wraps obfuscated content*
   ```
   & ([char]((5591 - 1917 - 703 - 2866))+[char](((-76 -Band 1357) + (-76 -Bor 1357) + 7835 - 9015))+[char](((11229 -Band 1042) + (11229 -Bor 1042) - 3467 - 8684)))($obfuscated)
   ```
4. Repeats (iterations)

## Features 
- Arithmetic Encoding
- MBA obfuscared iex command
- Bitwise Encoding
- Dynamic Execution
- Iterations

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-Charfuscator.ps1;char -nvi".\Test.ps1" -nvo ".\Char.ps1" -iterations 1`

## Disclaimer
Do not use the encoder to create malware, **I take no responsibility for the abuse of this tool.**
