import sys
import uuid
import base64
from Cryptodome.PublicKey import RSA
from Cryptodome.Cipher import AES, PKCS1_OAEP
from Cryptodome.Random import get_random_bytes
arg = input("Текст для шифровки: ")

name = str(uuid.uuid4()) + ".bin"
data = arg.encode("utf8")
file_out=open(name,"wb")

recipient_key = RSA.import_key(open("public.pem").read())
session_key = get_random_bytes(16)

cipher_rsa = PKCS1_OAEP.new(recipient_key)
enc_session_key = cipher_rsa.encrypt(session_key)

cipher_aes = AES.new(session_key, AES.MODE_EAX)
ciphertext, tag = cipher_aes.encrypt_and_digest(data)
[ file_out.write(x) for x in (enc_session_key, cipher_aes.nonce, tag, ciphertext) ]

file_out.close()