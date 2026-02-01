import numpy as np
from scipy.linalg import expm
import random


class Env(object):
    def __init__(self):
        super(Env, self).__init__()
        self.state = np.array([1,0,0,0,0,0,0,0])
        self.nstep=0
        self.max_step = 100
        self.dt = 0.1


    def reset(self):

        self.state = np.array([1,0,0,0,0,0,0,0])

        state = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        sI = np.mat([[1, 0], [0, 1]], dtype=complex)
        sx = np.mat([[0, 1], [1, 0]], dtype=complex)
        sy = np.mat([[0, -1j], [1j, 0]], dtype=complex)
        sz = np.mat([[1, 0], [0, -1]], dtype=complex)
        state = state.T
        state = np.mat(state)
        x1 = state.T.conjugate() * np.kron(sI, sx) * state
        x2 = state.T.conjugate() * np.kron(sI, sy) * state
        x3 = state.T.conjugate() * np.kron(sI, sz) * state
        x4 = state.T.conjugate() * np.kron(sx, sI) * state
        x5 = state.T.conjugate() * np.kron(sx, sx) * state
        x6 = state.T.conjugate() * np.kron(sx, sy) * state
        x7 = state.T.conjugate() * np.kron(sx, sz) * state
        x8 = state.T.conjugate() * np.kron(sy, sI) * state
        x9 = state.T.conjugate() * np.kron(sy, sx) * state
        x10 = state.T.conjugate() * np.kron(sy, sy) * state
        x11 = state.T.conjugate() * np.kron(sy, sz) * state
        x12 = state.T.conjugate() * np.kron(sz, sI) * state
        x13 = state.T.conjugate() * np.kron(sz, sx) * state
        x14 = state.T.conjugate() * np.kron(sz, sy) * state
        x15 = state.T.conjugate() * np.kron(sz, sz) * state
        obs = np.array([x1[0,0], x2[0,0], x3[0,0],\
                        x4[0,0], x5[0,0], x6[0,0],\
                        x7[0,0], x8[0,0], x9[0,0],\
                        x10[0,0], x11[0,0], x12[0,0],\
                        x13[0,0], x14[0,0], x15[0,0]])

        self.nstep = 0

        target = np.mat([[1], [0], [0], [1]], dtype=complex)/np.sqrt(2)
        x1_target = target.T.conjugate() * np.kron(sI, sx) * target
        x2_target = target.T.conjugate() * np.kron(sI, sy) * target
        x3_target = target.T.conjugate() * np.kron(sI, sz) * target
        x4_target = target.T.conjugate() * np.kron(sx, sI) * target
        x5_target = target.T.conjugate() * np.kron(sx, sx) * target
        x6_target = target.T.conjugate() * np.kron(sx, sy) * target
        x7_target = target.T.conjugate() * np.kron(sx, sz) * target
        x8_target = target.T.conjugate() * np.kron(sy, sI) * target
        x9_target = target.T.conjugate() * np.kron(sy, sx) * target
        x10_target = target.T.conjugate() * np.kron(sy, sy) * target
        x11_target = target.T.conjugate() * np.kron(sy, sz) * target
        x12_target = target.T.conjugate() * np.kron(sz, sI) * target
        x13_target = target.T.conjugate() * np.kron(sz, sx) * target
        x14_target = target.T.conjugate() * np.kron(sz, sy) * target
        x15_target = target.T.conjugate() * np.kron(sz, sz) * target
        obs_target = np.array([x1_target[0,0], x2_target[0,0], x3_target[0,0],\
                               x4_target[0,0], x5_target[0,0], x6_target[0,0],\
                               x7_target[0,0], x8_target[0,0], x9_target[0,0],\
                               x10_target[0,0], x11_target[0,0], x12_target[0,0],\
                               x13_target[0,0], x14_target[0,0], x15_target[0,0]])

        return self.state, obs


    def step(self, action_vec, fidelity_threshold):

        target = np.mat([[1], [0], [0], [1]], dtype=complex)/np.sqrt(2)

        psi = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        psi = psi.T
        psi=np.mat(psi)

        sI = np.mat([[1, 0], [0, 1]], dtype=complex)
        sx = np.mat([[0, 1], [1, 0]], dtype=complex)
        sy = np.mat([[0, -1j], [1j, 0]], dtype=complex)
        sz = np.mat([[1, 0], [0, -1]], dtype=complex)

        U = np.matrix(np.identity(4, dtype=complex))

        H0 = np.kron(sz, sz)
        H1 = np.kron(sx, sI)
        H2 = np.kron(sI, sx)
        H3 = np.kron(sy, sI)
        H4 = np.kron(sI, sy)
        H = H0 + action_vec[0] * H1 + action_vec[1] * H2 + action_vec[2] * H3 + action_vec[3] * H4

        U = expm(-1j * H * self.dt)

        psi = U * psi

        fidelity = (np.abs(psi.H * target) ** 2).item(0).real

        done = (fidelity > fidelity_threshold)

        self.nstep += 1
        timedone = (self.nstep >= self.max_step)

        psi=np.array(psi)
        psi_T = psi.T
        self.state = np.array(psi_T.real.tolist()[0] + psi_T.imag.tolist()[0])


        state = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        state = state.T
        state = np.mat(state)
        x1 = state.T.conjugate() * np.kron(sI, sx) * state
        x2 = state.T.conjugate() * np.kron(sI, sy) * state
        x3 = state.T.conjugate() * np.kron(sI, sz) * state
        x4 = state.T.conjugate() * np.kron(sx, sI) * state
        x5 = state.T.conjugate() * np.kron(sx, sx) * state
        x6 = state.T.conjugate() * np.kron(sx, sy) * state
        x7 = state.T.conjugate() * np.kron(sx, sz) * state
        x8 = state.T.conjugate() * np.kron(sy, sI) * state
        x9 = state.T.conjugate() * np.kron(sy, sx) * state
        x10 = state.T.conjugate() * np.kron(sy, sy) * state
        x11 = state.T.conjugate() * np.kron(sy, sz) * state
        x12 = state.T.conjugate() * np.kron(sz, sI) * state
        x13 = state.T.conjugate() * np.kron(sz, sx) * state
        x14 = state.T.conjugate() * np.kron(sz, sy) * state
        x15 = state.T.conjugate() * np.kron(sz, sz) * state
        obs = np.array([x1[0,0], x2[0,0], x3[0,0],\
                        x4[0,0], x5[0,0], x6[0,0],\
                        x7[0,0], x8[0,0], x9[0,0],\
                        x10[0,0], x11[0,0], x12[0,0],\
                        x13[0,0], x14[0,0], x15[0,0]])

        x1_target = target.T.conjugate() * np.kron(sI, sx) * target
        x2_target = target.T.conjugate() * np.kron(sI, sy) * target
        x3_target = target.T.conjugate() * np.kron(sI, sz) * target
        x4_target = target.T.conjugate() * np.kron(sx, sI) * target
        x5_target = target.T.conjugate() * np.kron(sx, sx) * target
        x6_target = target.T.conjugate() * np.kron(sx, sy) * target
        x7_target = target.T.conjugate() * np.kron(sx, sz) * target
        x8_target = target.T.conjugate() * np.kron(sy, sI) * target
        x9_target = target.T.conjugate() * np.kron(sy, sx) * target
        x10_target = target.T.conjugate() * np.kron(sy, sy) * target
        x11_target = target.T.conjugate() * np.kron(sy, sz) * target
        x12_target = target.T.conjugate() * np.kron(sz, sI) * target
        x13_target = target.T.conjugate() * np.kron(sz, sx) * target
        x14_target = target.T.conjugate() * np.kron(sz, sy) * target
        x15_target = target.T.conjugate() * np.kron(sz, sz) * target
        obs_target = np.array([x1_target[0,0], x2_target[0,0], x3_target[0,0],\
                               x4_target[0,0], x5_target[0,0], x6_target[0,0],\
                               x7_target[0,0], x8_target[0,0], x9_target[0,0],\
                               x10_target[0,0], x11_target[0,0], x12_target[0,0],\
                               x13_target[0,0], x14_target[0,0], x15_target[0,0]])   
        
        return self.state, done, fidelity, np.squeeze(psi), timedone, obs




