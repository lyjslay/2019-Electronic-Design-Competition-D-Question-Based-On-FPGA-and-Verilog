import numpy as np

sum = 0
space1 = np.linspace(100,1000,10)
space2 = np.linspace(1001,10000,80)
space3 = np.linspace(10001,200000,166)

freq_list = list(np.hstack((space1,space2,space3)))
for i in range(256):
    sum += 1/freq_list[i]
print(sum)