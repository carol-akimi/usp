plaintext = b'13TT5s0UR1'
chave = b'panfuntilo'

"""ciphertext = bytes()
for p, c in zip(plaintext, chave):
    xor = p ^ c
    ciphertext += bytes([xor])
"""
ciphertext = bytes([p ^ k for p, k in zip(plaintext, chave)])

print(ciphertext)
print(ciphertext.hex())


