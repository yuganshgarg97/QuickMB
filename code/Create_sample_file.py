import os
f = open("Sample_Text_file.txt","w")
s = ""
for i in range(97,123):
    s+=chr(i)
for i in range(0,100):
    s+=str(i)
f.write(s)
f.close()
