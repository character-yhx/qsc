import numpy as np
from scipy.linalg import expm

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
        obs = np.array([x1[0,0], x3[0,0]])

        self.nstep = 0

        target = np.mat([[0], [1]], dtype=complex)
        x1_target = target.T.conjugate() * sx * target
        x2_target = target.T.conjugate() * sy * target
        x3_target = target.T.conjugate() * sz * target
        obs_target = np.array([x1_target[0, 0], x3_target[0, 0]])

        return self.state, obs


    def step(self, action, fidelity_threshold):

        target = np.mat([[0], [1]], dtype=complex)

        psi = np.array([self.state[0:int(len(self.state) / 2)] + self.state[int(len(self.state) / 2):int(len(self.state))] * 1j])
        psi = psi.T
        psi = np.mat(psi)

        sx = np.mat([[0, 1], [1, 0]], dtype=complex)
        sy = np.mat([[0, -1j], [1j, 0]], dtype=complex)
        sz = np.mat([[1, 0], [0, -1]], dtype=complex)

        U = np.matrix(np.identity(2, dtype=complex))

        J = 4
        H = J * float(action) * sz + 1 * sx

        U = expm(-1j * H * np.pi/50)

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
        x1 = state.T.conjugate() * sx * state
        x2 = state.T.conjugate() * sy * state
        x3 = state.T.conjugate() * sz * state
        obs = np.array([x1[0, 0], x2[0, 0], x3[0, 0]])

        x1_target = target.T.conjugate() * sx * target
        x2_target = target.T.conjugate() * sy * target
        x3_target = target.T.conjugate() * sz * target
        obs_target = np.array([x1_target[0, 0], x3_target[0, 0]])
        
        
        return self.state, done, fidelity, np.squeeze(psi), timedone, obs




