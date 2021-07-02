#! /usr/bin/python3

import crypt, secrets

password = str(secrets.token_urlsafe(16))
salt = crypt.mksalt()

print("--------")
print("password:", password)
print("salt:    ", salt)
print("hash:    ", crypt.crypt(password, salt))
print("--------")