# funtranslations
api for funtranslations.com site for translate english to funny languages like Morse Code, Sith or Valyrian
# Example
```nim
import asyncdispatch, funtranslations, json, strutils
let data = waitFor translate_morse("text")
echo data
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
