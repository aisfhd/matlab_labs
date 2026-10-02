clear; clc; close all;

global x y; 

x = 0:0.2:2*pi;

calc_sincos;

figure;
plot(x, y, 'r:s');
grid on;
xlabel('x'); ylabel('y');
title('y = sin(x) + cos(x)');

whos
whos global