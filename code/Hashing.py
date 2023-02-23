import os
import time
print("The Process to create Hash Began at ", time.ctime())
Start = time.time()
os.system("sha512sum Test_image.iso >> Hashed_Text.txt")
End = time.time()
os.system("pkill sar")
print("The Process to create Hash Ended at", time.ctime())
print("Time Taken in Hash Calculation = ",End-Start, " Seconds")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
