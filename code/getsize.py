import os
size = os.path.getsize("ubuntu.iso")
s = size/(1024.0**3)
print(s)
