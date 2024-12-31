# Charfuscator
Takes a single character as input and returns an obfuscated representation of that character using randomized arithmetic or bitwise operations.
![charpre](https://github.com/5Noxi/Charfuscator/blob/main/NV-Char.png?raw=true)
### Before
![before](https://github.com/5Noxi/Charfuscator/blob/main/Before.png?raw=true) 
### After
![after](https://github.com/5Noxi/Charfuscator/blob/main/After.png?raw=true)

## How it works
1. Gets content of input
2. Obfuscates content - replaces each character in the script with an obfuscated equivalent ([char])
3. Wraps obfuscated content*
   ```
   iex($obfuscated_content)
   ```
4. Repeats (iterations)

## Usage
`nvi` -> Input

`nvo` -> Output

`. \NV-Charfuscator.ps1;char -nvi".\Test.ps1" -nvo ".\Char.ps1" -iterations 1`

## Disclaimer
Do not use the encoder to create malware, **I take no responsibility for the abuse of this tool.**
