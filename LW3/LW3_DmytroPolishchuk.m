% Dmytro Polishchuk Ekfu-25/1
% 25.09.2026

%% task1
v1 = linspace(0,4,81);
fv1 = v1;
fv2 = v1.^2;
fv3 = v1.^3;
hold on;
title('Graphs of the functions xn');
ylabel('f_1(x) = x; f_2(x)=x^2; f_3(x)=x^3');
xlabel('x');
plot(v1,fv1);
plot(v1,fv2);
plot(v1,fv3);
hold off;


%% task2
xv2 = linspace(0,10*pi,500);
yv2 = sin(v2).*cos(v2);
zv2 = cos(v2);
figure;

subplot(2, 1, 1);
plot3(xv2, yv2, zv2, 'b', 'LineWidth', 1.2);
grid on;
title('a) 3D plot of y(x) and z(x)');
xlabel('x');
ylabel('y = sin(x)cos(x)');
zlabel('z = cos(x)');
xlim([0 10*pi]);
ylim([-0.6 0.6]);
zlim([-1.2 1.2]);

subplot(2, 1, 2);
polarplot(xv2, yv2, 'k', 'LineWidth', 1.2);
title('b) Polar plot of y(x)');

%% task P
% --- Signals from Task 3 ---
A = 6;
f = 4;
sigma = 1.2;
U1 = 3.5;
U2 = 2.5;

t = 0:0.001:1.5;
s = A*sin(2*pi*f*t) + 0.5*A*cos(4*pi*f*t);
n = sigma * randn(size(t));
s_noisy = s + n;

idx = s_noisy > U1;    % locations where the signal exceeds U1
t_a = t(idx);          % corresponding time instants
s_a = s_noisy(idx);    % original signal values exceeding U1

s_filtered = s_a;
s_filtered(abs(s_filtered) < U2) = 0;

dt = t(2) - t(1);
gapAfter = find(diff(t_a) > 1.5 * dt);
t_line = t_a;
s_line = s_filtered;
for k = numel(gapAfter):-1:1        % insert from the end so indices stay valid
    pos = gapAfter(k) + 1;
    t_line = [t_line(1:pos-1), NaN, t_line(pos:end)];
    s_line = [s_line(1:pos-1), NaN, s_line(pos:end)];
end

% --- Figure ---
purpleColor = [0.5 0 0.5];
greenColor  = [0   0.6 0];
figure('Color', 'w', 'Position', [100 100 1200 500]);

% a) Original and filtered signals with threshold lines
subplot(1, 2, 1);
hold on;
plot(t,   s_noisy,    'b--', 'LineWidth', 1.5);   % original signal (dashed)
plot(t_line, s_line,  'r:',  'LineWidth', 1.5);   % filtered signal (dotted)
yline(U1, '-',  'Color', purpleColor, 'LineWidth', 1.5);
yline(U2, '--', 'Color', greenColor,  'LineWidth', 1.2);
hold off;
grid on;
xlabel('Time, s');
ylabel('Voltage, V');
title('Original and Filtered Signals', 'Color', purpleColor, 'FontSize', 16);
legend('Original signal', 'Filtered signal', 'U_1 threshold', 'U_2 threshold', ...
       'Location', 'best');
xlim([t(1), t(end)]);
ylim([min(min(s_noisy), U2) - 1, max(max(s_noisy), U1) + 1]);

% b) Discrete display of values exceeding U1, with max/min markers
subplot(1, 2, 2);
hold on;
stem(t_a, s_a, 'filled', 'Color', [0 0.4 0.8], 'LineWidth', 1.5);

maxVal = max(s_a);
minVal = min(s_a);
plot(t_a(s_a == maxVal), s_a(s_a == maxVal), 'c*', 'MarkerSize', 12, 'LineWidth', 2);
plot(t_a(s_a == minVal), s_a(s_a == minVal), 'mo', 'MarkerSize', 10, ...
     'LineWidth', 2, 'MarkerFaceColor', 'm');
hold off;
grid on;
xlabel('Time, s');
ylabel('Voltage, V');
title('Signal Values Exceeding U_1', 'Color', purpleColor, 'FontSize', 16);
legend('Signal > U_1', 'Maximum value', 'Minimum value', 'Location', 'best');
xlim([min(t_a) - 0.05, max(t_a) + 0.05]);
ylim([minVal - 0.5, maxVal + 0.5]);