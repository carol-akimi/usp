ciphertext = '1b37373331363f78151b7f2b783431333d78397828372d363c78373e783a393b3736'

l = list('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
l2 = [0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0, 0,0,0,0,0,0,0,0,0]


for i in range(len(ciphertext)):
    for j in range(len(l)):
        if(ciphertext[i] == l[j]):
            l2[j] += 1

print(l2)