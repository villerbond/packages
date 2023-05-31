import numpy as np
import matplotlib.pyplot as plt
from scipy.integrate import solve_ivp
def funA(t, y):
    r = 28
    sigma = 10
    beta = 8 / 3

    return [sigma*(y[1] - y[0]), y[0]*(r - y[2]) - y[1], y[0]*y[1] - beta * y[2]]

t_span = np.array([0, 40])
t1 = np.linspace(0, 40, num=2000)
f0 = np.array([1.0, 1.0, 1.0])
soln = solve_ivp(funA, t_span, f0, t_eval=t1)
t = soln.t
x = soln.y[0]
y = soln.y[1]
z = soln.y[2]

fig, ax = plt.subplots(subplot_kw={'projection': '3d'})
ax.plot(x, y, z)

plt.legend()
plt.show()