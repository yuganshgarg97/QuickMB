import random
import pickle 
import os
x = []
for i in range(5000000):
    y = random.choice(range(-100000000,100000000))
    x.append(y)
    print(i)
#print(x)
#os.chdir("/home/yugansh/Documents/Thesis_Codes")
f =open("List_of_integers.lst","wb")
pickle.dump(x,f)
f.close()

