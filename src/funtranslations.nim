import asyncdispatch, httpclient, json, strutils, uri

const api = "https://api.funtranslations.com/translate/"
var headers = newHttpHeaders({
    "Connection": "keep-alive",
    "User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36",
    "Host": "api.funtranslations.com",
    "Accept": "application/json"
})

proc translate_morse*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "morse?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_morse2english*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "morse2english?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_morse_audio*(text: string, speed: int = 20, tone: int = 700): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "morse/audio?text=" & encoded & "&speed=" & $speed & "&tone=" & $tone)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_valspeak*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "valspeak?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_jive*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "jive?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_cockney*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "cockney?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_brooklyn*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "brooklyn?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_ermahgerd*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "ermahgerd?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_pirate*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "pirate?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_minion*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "minion?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_ferblatin*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "ferblatin?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_chef*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "chef?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_dolan*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "dolan?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_fudd*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "fudd?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_braille*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "braille?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_braille_dots*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "braille/dots?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_braille_unicode*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "braille/unicode?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_braille_image*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "braille/image?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_braille_html*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "braille/html?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_sindarin*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "sindarin?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_quenya*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "quenya?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_oldenglish*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "oldenglish?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_shakespeare*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "shakespeare?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_us2uk*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "us2uk?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_uk2us*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "uk2us?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_dothraki*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "dothraki?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_valyrian*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "valyrian?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()


proc translate_vulcan*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "vulcan?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_klingon*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "klingon?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Pig Latin
proc translate_piglatin*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "piglatin?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

# Star Wars translations
proc translate_yoda*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "yoda?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_sith*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "sith?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_cheunh*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "cheunh?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_gungan*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "gungan?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_mandalorian*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "mandalorian?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()

proc translate_huttese*(text: string): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  client.headers = headers
  try:
    let encoded = encodeUrl(text)
    let response = await client.get(api & "huttese?text=" & encoded)
    let body = await response.body
    result = parseJson(body)
  finally:
    client.close()
