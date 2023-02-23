 openssl enc -aes-256-cbc -d -md sha512 -pbkdf2 -iter 250000 -salt -k "Myencryptedfile" -in encrypted  -out ubuntu.iso
