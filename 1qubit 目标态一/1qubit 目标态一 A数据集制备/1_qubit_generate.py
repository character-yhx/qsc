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

    data_num = 3000
    event_num = 4
    threshold1 = 0.25
    threshold2 = 0.5
    threshold3 = 0.75

    print(f'\n1_qubit制作数据集, {event_num}个事件, 每种事件共{data_num}个')
    starttime = time()


    data_evnet1 = open('event1.csv', 'w')
    writer_evnet1 = csv.writer(data_evnet1)
    fid_list_event1 = []
    visited1 = []    

    data_evnet2 = open('event2.csv', 'w')
    writer_evnet2 = csv.writer(data_evnet2)
    fid_list_event2 = []
    visited2 = []     

    data_evnet3 = open('event3.csv', 'w')
    writer_evnet3 = csv.writer(data_evnet3)
    fid_list_event3 = []
    visited3 = []     

    data_evnet4 = open('event4.csv', 'w')
    writer_evnet4 = csv.writer(data_evnet4)
    fid_list_event4 = []
    visited4 = []     


    env = Env()
    state, obs = env.reset()


    n_features = 4     
    n_actions = 3      
    while True:
        step = 0
        for time_number in range(50):
            action = random.choice(list(range(3)))
            if action == 0:
                action_truevalue = -1
            elif action == 1:
                action_truevalue = 0
            elif action == 2:
                action_truevalue = 1
            state_, done, fid, psi, timedone, obs_ = env.step(action_truevalue, 0.99)  
            obs = obs_
            step += 1

            if 0 <= fid < threshold1:
                event = 0
                if fid not in fid_list_event1 and len(fid_list_event1) < data_num:
                    fid_list_event1.append(fid)
                    data = [event, fid, obs[0].real, obs[1].real, obs[2].real]     
                    writer_evnet1.writerow(data)
                if len(fid_list_event1) == data_num:
                    data_evnet1.close()
                    print(f'1_qubit制作数据集, 事件1制备完毕')
            elif threshold1 <= fid < threshold2:
                event = 1
                if fid not in fid_list_event2 and len(fid_list_event2) < data_num:
                    fid_list_event2.append(fid)
                    data = [event, fid, obs[0].real, obs[1].real, obs[2].real]     
                    writer_evnet2.writerow(data)
                if len(fid_list_event2) == data_num:
                    data_evnet2.close()
                    print(f'1_qubit制作数据集, 事件2制备完毕')
            elif threshold2 <= fid < threshold3:
                event = 2
                if fid not in fid_list_event3 and len(fid_list_event3) < data_num:
                    fid_list_event3.append(fid)
                    data = [event, fid, obs[0].real, obs[1].real, obs[2].real]    
                    writer_evnet3.writerow(data)
                if len(fid_list_event3) == data_num:
                    data_evnet3.close()
                    print(f'1_qubit制作数据集, 事件3制备完毕')
            elif threshold3 <= fid <= 1:
                event = 3
                if fid not in fid_list_event4 and len(fid_list_event4) < data_num:
                    fid_list_event4.append(fid)
                    data = [event, fid, obs[0].real, obs[1].real, obs[2].real]     
                    writer_evnet4.writerow(data)
                if len(fid_list_event4) == data_num:
                    data_evnet4.close()
                    print(f'1_qubit制作数据集, 事件4制备完毕')


        if len(fid_list_event1) == data_num and len(fid_list_event2) == data_num and len(fid_list_event3) == data_num and len(fid_list_event4) == data_num:
            break


    endtime = time()
    print(f'\n1_qubit制作数据集, {event_num}个事件, 每种事件共{data_num}个, 用时{(endtime - starttime)}秒')














