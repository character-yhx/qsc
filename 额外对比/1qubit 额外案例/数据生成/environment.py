import numpy as np
from scipy.linalg import expm
import math

class Env( object):
    def __init__(self):
        super(Env, self).__init__()
        self.state = np.array([1,0,0,0])
        self.nstep=0
        self.max_step = 50

    def reset(self):

        self.state = np.array([1,0,0,0])

        state = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        sx = np.mat([[0, 1], [1, 0]], dtype=complex)
        sy = np.mat([[0, -1j], [1j, 0]], dtype=complex)
        sz = np.mat([[1, 0], [0, -1]], dtype=complex)
        state = state.T
        state = np.mat(state)
        x1 = state.T.conjugate() * sx * state
        x2 = state.T.conjugate() * sy * state
        x3 = state.T.conjugate() * sz * state
        obs = np.array([x1[0,0], x2[0,0], x3[0,0]])


        self.nstep = 0

        return self.state, obs

    def segment_reset(self, state_info):

        self.state = state_info

        return self.state

    def step(self, event, a, v):

        sI = np.mat([[1, 0], [0, 1]], dtype=complex)
        sx = np.mat([[0, 1], [1, 0]], dtype=complex)
        sy = np.mat([[0, -1j], [1j, 0]], dtype=complex)
        sz = np.mat([[1, 0], [0, -1]], dtype=complex)
        if event == 0:
            psi = (1/2) * (sI + (1-v)*(sz*math.cos(a) + sx*math.sin(a)))
        if event == 1:
            psi = (1/2) * (sI + (1-v)*(sz*math.cos(a) - sx*math.sin(a)))
        psi=np.array(psi)


        psi_T = psi.T
        self.state = np.array(psi_T.real.tolist()[0] + psi_T.imag.tolist()[0])

        state = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        state = state.T
        state = np.mat(state)
        x1 = state.T.conjugate() * sx * state
        x2 = state.T.conjugate() * sy * state
        x3 = state.T.conjugate() * sz * state
        obs = np.array([x1[0, 0], x2[0, 0], x3[0, 0]])
        
        return np.squeeze(psi), obs




