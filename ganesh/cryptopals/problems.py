##convert hex to base64 

from base64 import b16decode, b64encode

data_hex = "1c0111001f010100061a024b53535009181c"
data_raw = b16decode(data_hex, casefold = True)
data_b64 = b64encode(data_raw)

a = bytes.fromhex("1c0111001f010100061a024b53535009181c")
b = bytes.fromhex("686974207468652062756c6c277320657965")

ciphertext = bytes()
for p, c in zip(a, b):
    xor = p ^ c 
    ciphertext += bytes([xor])

print(ciphertext.hex())
