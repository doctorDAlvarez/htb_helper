openssl enc -aes-128-ecb -e -in PLAIN.txt -out CIPHER.txt 
-k 00112233445566778899AABBCCDDEEFF
openssl enc -aes-128-ecb -d -in CIPHER.txt out PLAIN2.txt 
-k 00112233445566778899AABBCCDDEEFF