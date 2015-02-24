h_total = 5;
h_step = 0.25;
n_stepEnd = 12;
m_stepEach = 20;
r_step = 0.5;
r_drumInner = 0.49;
r_drumOuter = 0.50;
rho_steel = 7900;
g = 9.81;
w = 1;
theta = 25*pi/180;

n_step = 2*(h_total/h_step - 1) + 2*n_stepEnd;
m_stepTotal = m_stepEach * n_step;

sin_theta = sin(theta);

J_drum = 1/2 * pi * w * (r_drumOuter^4 - r_drumInner^4) * rho_steel;