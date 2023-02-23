import os
import time
new = time.ctime()
x = str(new)
x = x.replace(" ","")
x = x.replace(":","")
print(x)
os.rename("results.tar.gz",x+".tar.gz")

