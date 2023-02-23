import os
import time
print(" AES Decryption Begin at ", time.ctime())
start = time.time()
os.system("./AES_Decryption.sh")
end = time.time()
print("AES Decryption Ended at ", time.ctime())
size = os.path.getsize("ubuntu.iso")
s = size/(1024.0**3)
print("time taken to Decrypt ",s," GB data = ",end-start)
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(end-start))
x.close()

