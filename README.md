# Base64 Encoding / Character Obfuscation

Encodes your code by using [B64](https://www.base64decode.org/) or obfuscates it using [characters](https://www.rapidtables.com/code/text/ascii-table.html) (character array). Both shouldn't be used, if you want to make your code hard to read. These are the most basic encoding/obfuscation techniques for powershell, you could decode the B64 encoded code with a website. 

Preview:

https://github.com/user-attachments/assets/c2d4f4fd-be28-453c-ba75-008de44888d3

`Base64` - Single `FromBase64String`, everything related is randomized obfuscated

`Character` - Converts input characters to its ASCII integer (dec)
```ps
$calcs = @(
    "(out+add-add)",
    "(out-bxoradd-bxoradd)"
    "(out+add-add)"
    "(out-bxor add-bxoradd)"
    "(out*1)+((add*add)-(add*add))"
    "(out/1)+(add-add)"
    "(out+((add-band 0)-bor(add-band 0)))"
    "(out+(add-out)-(add-out))"
    "(out-(add*out-add*out))"
    "(out+(add*0))"
    "(out+(add-add))"
    "(out-band0xFFFFFFFF)"
    "((out+add)-add)"
)
$expr = Get-Random -InputObject $calcs
$additional = Get-Random -Minimum 100 -Maximum 1000
$safe = $expr -replace 'out', "$char" -replace 'add', "$additional"
[char]($safe)
```
Uses predefined calculations with a random integer (`add`), instead of returning `[char]($dec)`.

Default value for `Iterations` is `1`, if increasing it too much while using B64 the file size will increase exponential. Increasing the iterations while using `Character` it'll increase the startup time by a lot. If you want to increase the iterations ideally only for `B64`.

Preview using https://discord.com/channels/836870260715028511/1355572214489153756/1392193389537005700:

## Discord Server 
- https://discord.gg/E2ybG4j9jU
