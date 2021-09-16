#单位kHz
#freq = [50,100,200,500,1000,2000,5000,7000,10000,15000,20000,35000,50000,70000,85000,100000,200000,500000,1000000]
import numpy as np
space1 = np.linspace(100,1000,10)
space2 = np.linspace(1100,10000,80)
space3 = np.linspace(11000,200000,166)

freq_list = list(np.hstack((space1,space2,space3)))
Period = 1



sys_freq =  50000000 #50Mhz
data_width = 14
# freq_ctrl=freq_out*2^width/sys_freq

for i in range(256): #根据i判断current freq范围
    print(i,freq_list[i])
#输出计数值表
with open('cnt.txt','w') as f:
    f.writelines("//周期数:{}\n".format(Period))
    for i in range(256):
        cnt = int(round(Period*sys_freq/freq_list[i])) #1个周期
        line = str(i)+":"+"ten_per_cnt=24'd"+str(cnt)+";\n"
        f.writelines(line)


#输出控制字表
with open('ctrl.txt','w') as f:
    for i in range(256):
        current_freq = freq_list[i]
        if current_freq<=1000: #1kHZ以下
            dac_freq = 100000
            print(i,'0000000')
        elif current_freq>1000 and current_freq<=10000:#1k-10k
            dac_freq = 1000000
            print(i,'1111111')
        elif current_freq>10000 and current_freq<=200000:#10k-100k
            dac_freq = 12500000
            print(i,"22222")
        else:#100k-1M
            dac_freq = 100000000
            print(i,"33333")
        freq_ctrl = int(round(current_freq*(2**data_width)/dac_freq))
        line = str(i)+":"+"dds_ctrl_data={phase_ctrl_word,16'd"+str(freq_ctrl)+"};\n"
        f.writelines(line)