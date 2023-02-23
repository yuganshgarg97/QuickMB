import os
import time
path = "Bench_Test_Images"
isdir = os.path.isdir(path)
if(isdir == True):
    os.system("rm -rf Bench_Test_Images/")

print("The Process to Test  Read/Write operations began at ",time.ctime())
Start = time.time()
os.mkdir("Bench_Test_Images")
os.chdir("Bench_Test_Images")
def create(img):
    file1 = open("../test.png","rb")
    string = file1.read()
    file2 = open("copy_of_test-"+str(img)+".png","wb")
    file2.write(string)
    file1.close()
    file2.close()

for i in range(2048):
    create(i)
End = time.time()
print("The Process to test Read/Write operations Ended at ",time.ctime())
print("Time taken to Read/Write  = ",End-Start,"Seconds")
os.system("pkill sar")
os.chdir("..")
x = open("time.txt",'w')
x.write(str(End-Start))
x.close()
