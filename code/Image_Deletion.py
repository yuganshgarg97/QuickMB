import os
import time
Start = time.time()
os.chdir("Bench_Test_Images")
def delete_files(img):
    os.remove("copy_of_test-"+str(img)+".png")
for i in range(0,1024):
    delete_files(i)
End = time.time()
os.chdir("..")
os.rmdir("Bench_Test_Images")
print("Exectutin time = ",End - Start,"Seconds")

