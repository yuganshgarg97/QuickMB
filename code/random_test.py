import time
import random
import os
print("The Randomized Algorithms Test  Begin at ", time.ctime())
Start = time.time()
for i in range(10000000):
    x = random.choice(range(-100000000,100000000))
    #print(x)
print("The Randomized Algorithms Test  Ended at ", time.ctime())
End = time.time()
print("Time Taken to Execute Random Function  = ",End - Start, "Seconds ")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
