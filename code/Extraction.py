import os
import time
path = "Extracted"
isdir = os.path.isdir(path)
if(isdir == True):
    os.system("rm -rf Extracted/")
print("The Extraction Process Began at ", time.ctime())
start = time.time()
os.mkdir("Extracted")
os.system("tar -xvf Bench_image.tar.gx -C Extracted/ > list_of_Extracted.txt")
end = time.time()
print("The Extraction Process Ended at ", time.ctime())
print("Time taken to Extract Data = ",end-start," Seconds")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(end-start))
x.close()
