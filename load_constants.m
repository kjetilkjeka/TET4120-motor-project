% Load constants
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
J_gear = 0.1;

% for simplifieid load
J_total = 740;

% Motor constants
L_a = 9.2*10^(-3);
R_a = 0.58;
T_a = L_a / R_a;
K_t = 1.47;
K_e = 1.47;

% PPU constants
K_pwm = 410;
f_switch = 4000;
T_delay = 1/2/f_switch;

% current loop tuning
omega_cI = 1000;
K_iI = omega_cI * R_a / K_pwm;
K_pI = T_a * K_iI;


% speed loop tuning
K_pv = 550;
K_iv = 0;
K_dv = 0;

% Mechanical calculation
n_step = 2*(h_total/h_step - 1) + 2*n_stepEnd;
m_stepTotal = m_stepEach * n_step;

sin_theta = sin(theta);

J_drum = 1/2 * pi * w * (r_drumOuter^4 - r_drumInner^4) * rho_steel;