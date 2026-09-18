% Dmytro Polishchuk Ekfu-25/1
% 18.09.2026

%% 
v = (-pi/2:0.5:3*pi)'
v_squared = v.^2
v_sin = sin(v+v_squared)
disp(v_sin')

Z = rand(3,3)
Z(2, :) = [];
Z'
%% 


A=6
f=4
sigma = 1.2
U1 = 3.5
U2 = 2.5
t = 0:0.001:1.5;
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma * randn(size(t));

s_noisy = s + n;

s_a = s_noisy(s_noisy>U1)

s_b = s_a
s_b(abs(s_b)<U2) = 0

c = length(s_noisy)
d = length(s_a)

min_val = min(s_b)
max_val = max(s_b)
%% 
v = input('enter 12 element vector: ');
v2 = [v(10:end), v(1:9)];
disp(v2);