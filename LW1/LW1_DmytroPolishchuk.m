% Dmytro Polishchuk Ekfu-25/1
% 18.09.2026

x = 1:32;
y = x.^2;
plot(x,y,'o-r',x,y/3,'xb');
title('two functions');
xlabel('X-ai');
ylabel('F_1 [-o-]     |    F_2 [-x-]');


N = 9;
V = (N+1):0.5:(N+4);
matrix = reshape(N:(N+8),3,3);
a = matrix(3,2);
b = matrix(2:3, 1:2);
c = matrix([1, 3], [1, 3]);
disp(a)
disp(b)
disp(c)

v2 = V(1:3);
matrix2 = [matrix, v2'];
