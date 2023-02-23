import time
import os
print("The Process to Test Floating Point Handling began at ",time.ctime())
Start = time.time()
a = 0.0
b= 1.0
n = 9000000
h = (b-a)/n # h = (b-a)/n
#I = h/((y0i+yn)/2 + y1+y2.... y(n-1))
x = []
for i in range(0,n+1):
    x.append(i*h)
#print(x)
y = []
for i in range(0, n+1):
    y.append(1/(1+x[i]**2))
#print(y)
S = 0
for i in range(1,n):
    S+= y[i]
I =  h*((y[0]+y[n])/2+S)
#print(I)
#pi = I*4
#print("%.60f"%pi)
End = time.time()
print("The Process to Test Floating Point Handling Ended at ",time.ctime())
print("Time taken in Float Test = ", End-Start," Seconds")
os.system("pkill sar")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
