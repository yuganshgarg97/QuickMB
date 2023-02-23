import os
import time
start = time.time()
os.system("sar -u 1 >> cpu_data.csv |sar -r 1 >> memory_data.csv | sar -S 1 >> swap_data.csv|./Bench_test.sh")
end = time.time()
print("process Completed")
print(" Total time taken = ", end -start," Seconds")
#os.system("pkill sar ")
print(time.ctime())
