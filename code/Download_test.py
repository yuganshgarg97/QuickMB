import os
import time
path = "../Test_image.iso"
isExist = os.path.exists(path)
if isExist:
    print("Already Present")
    os.system("cp ../Test_image.iso ../code")
else:
    print("The Process to Download 1.2 GB Began at ", time.ctime())
    Start = time.time()
    dummy = os.popen("wget --no-check-certificate https://www.releases.ubuntu.com/20.04/ubuntu-20.04.5-live-server-amd64.iso").read()
    End = time.time()
    size = os.path.getsize("ubuntu-20.04.5-live-server-amd64.iso")
    s= size/(1024**3)
    print("The Process to Download"+str(s)+" GB Ended at ", time.ctime())
    print(" Time taken to Download "+ str(s)+ "GB Data ", End - Start," Seconds")
    os.system("mv ubuntu* Test_image.iso")
    x = open("time.txt",'w')
    x.write("")
    x.close()
os.system("pkill sar")

