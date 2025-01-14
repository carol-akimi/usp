def vigenere_decrypt(ciphertext, key):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    letter_to_index = {letter: index for index, letter in enumerate(alphabet)}
    index_to_letter = {index: letter for index, letter in enumerate(alphabet)}
    
    key_repeated = (key * (len(ciphertext) // len(key) + 1))[:len(ciphertext)]
    
    plaintext = []
    
    for c_char, k_char in zip(ciphertext, key_repeated):
        if c_char.lower() in letter_to_index:
            c_index = letter_to_index[c_char.lower()]
            k_index = letter_to_index[k_char.lower()]
            decrypted_index = (c_index - k_index) % 26
            decrypted_char = index_to_letter[decrypted_index]
            if c_char.isupper():
                decrypted_char = decrypted_char.upper()
            plaintext.append(decrypted_char)
        else:
            plaintext.append(c_char)
    
    return ''.join(plaintext)

ciphertext = "aNNn5_{13TT5s0UR1}G40h5LePR"
key = "pafuntilo"

plaintext = vigenere_decrypt(ciphertext, key)
print(plaintext)
