import os
import time
start = time.time()
print(" AES Encryption Began at ", time.ctime())
os.system("./AES_Encryption.sh")
end = time.time()
print("AES Encryption Ended at ", time.ctime())
size = os.path.getsize("Test_image.iso")
s = size/(1024**3)
print("time taken to Encrypt ",s," GB data = ",end-start)
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(end-start))
x.close()
