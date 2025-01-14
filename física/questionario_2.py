import numpy as np
import sympy as sp


t = sp.symbols('t')
a = sp.symbols('a')
b = sp.symbols('b')
w = sp.symbols('w')
#vetor posição 
x_t = a*sp.cos(w*t)
y_t = a*sp.sin(w*t)
z_t = b*(t**2)
#vetor velocidade (derivada primeira do vetor posição)
v_x = sp.diff(x_t, t)
v_y = sp.diff(y_t, t)
v_z = sp.diff(z_t, t)

a_ = 3.5 
w_ = 1
b_ = 1.4
t_ = 1.6 
#substituição dos valores dados 
v_x_= v_x.subs({a: a_, w: w_, t: t_}).evalf()
v_y_= v_y.subs({a: a_, w: w_, t: t_}).evalf()
v_z_= v_z.subs({b: b_, t: t_}).evalf()
#cálculo do módulo do vetor velocidade 
vetor = np.array([v_x_, v_y_, v_z_], dtype = float)
modulo = np.linalg.norm(vetor)
print(modulo)
