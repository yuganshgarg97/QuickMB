import os
import time
print("The Compression Process Began at ", time.ctime())
start = time.time()
x =os.system("tar -cvf Bench_image.tar.gx Bench_Test_Images/ >> list_of_Compressed.txt")
end = time.time()
print("The Compression Process Ended at ", time.ctime())
print("Time taken to Compress Data  = ",end-start," Seconds")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(end-start))
x.close()
