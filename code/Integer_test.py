import time
import os
print("The Interger Test Begin at ", time.ctime())
def Check_Prime( num):
    for i in range(2,num):
        if(num % i == 0):
            return  0

prime_list = []
Start = time.time()
for i in range(2,100000):
    x = Check_Prime(i)
    if(x != 0):
        prime_list.append(i)
End = time.time()
f = open("Prime_Number_list.txt","w")
f.write(str(prime_list))
f.close()
print("The Interger Test Ended at ", time.ctime())
print("Time Taken for Integer Test is = ",End - Start, "Seconds ")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
