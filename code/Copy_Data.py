import os
import time
print("The Process to Copy Data Began at ", time.ctime())
Start = time.time()
os.system("cp -r Bench_Test_Images /var")
End = time.time()
print("The Process to Copy Data Ended at ", time.ctime())
print("Time Taken to Copy Data = ",End - Start, "Seconds")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
