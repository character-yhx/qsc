import numpy as np
from environment import Env
from time import *
import torch
import os
import shutil
import matplotlib.pyplot as plt
import math
import random
import csv


if __name__ == '__main__':

    event_num = 2
    data_num = 1
    Num = 0
    break_condition = False

    print(f'\n1_qubit制作数据集, {event_num}个事件, 每种事件共{data_num}个')
    starttime = time()


    data_evnet1 = open('event1.csv', 'w')
    writer_evnet1 = csv.writer(data_evnet1)

    data_evnet2 = open('event2.csv', 'w')
    writer_evnet2 = csv.writer(data_evnet2)


    env = Env()
    psi, obs = env.reset()




    while True:


        if 0*data_num <= Num < 1*data_num:
            event = 0
            a = np.pi/6
            v = 0.1
        elif 1*data_num <= Num < 2*data_num:
            event = 1
            a = np.pi/6
            v = 0.1


        psi, obs = env.step(event, a, v)

        Num += 1


        if event == 0:
            data = [event, obs[0].real, obs[1].real, obs[2].real]
            writer_evnet1.writerow(data)
            data_evnet1.close()
            print(f'1_qubit制作数据集, 事件1制备完毕')
        elif event == 1:
            data = [event, obs[0].real, obs[1].real, obs[2].real]     
            writer_evnet2.writerow(data)
            data_evnet2.close()
            print(f'1_qubit制作数据集, 事件2制备完毕')
            break_condition = True


        if break_condition:
            break


    endtime = time()
    print(f'\n1_qubit制作数据集, {event_num}个事件, 每种事件共{data_num}个, 用时{(endtime - starttime)}秒')











