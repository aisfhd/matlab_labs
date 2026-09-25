% Dmytro Polishchuk Ekfu-25/1
% 25.09.2026

%% task 1
%a
x_vec = sort((2*rand(1,200)-1).*sqrt(pi/2));
y_vec = sort((2*rand(1,200)-1).*sqrt(pi/2));
[X, Y] = meshgrid(x_vec, y_vec);
Z = sin(X.^2 + Y.^2);
hold on;
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of f(x,y) = sin(x^2 + y^2)');
colormap('jet');
colorbar;
view(15,15)
surf(X,Y,Z);
shading interp; 
hold off;
%%
%b
[X,Y] = meshgrid(-1:0.02:1);
figure(2)
r = sqrt(X.^2 + Y.^2);
Z = exp(r.^2);

hold on;
view(20,20);
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of z(r) = e^r^2; r(x,y) = sqrt(x^2+y^2)');
colormap('jet');
colorbar;
surf(X,Y,Z);
view(3)
shading interp; 
hold off;
%% task P
[X,Y] = meshgrid(-5:0.05:5);
Z = 1 - (X.^2 + Y.^2);
%graph 1
figure(1)
hold on;
view(20,20);
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of z(x,y) = 1 - (X^2 + Y^2); colormap "hot"');
colormap('hot');
colorbar;
surf(X,Y,Z);
view(3)
shading interp; 
hold off;

%graph 2
figure(2);
hold on;
view(20,20);
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of z(x,y) = 1 - (X^2 + Y^2); colormap "jet"');
colormap('jet');
colorbar;
surf(X,Y,Z);
view(3)
shading interp; 
hold off;


%graph 3


red   = linspace(0.0, 1.0, 256)';
green = linspace(0.0, 0.0, 256)';
blue  = linspace(1.0, 0.0, 256)';

custom_map1 = [red, green, blue];

colormap(custom_map1);
figure(3);
hold on;
view(20,20);
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of z(x,y) = 1 - (X^2 + Y^2); colormap "custom1"');
colormap(custom_map1);
colorbar;
surf(X,Y,Z);
view(3)
shading interp; 
hold off;

%graph 4

red   = linspace(1.0, 0.2118, 256)';
green = linspace(0.4, 0.0039, 256)';
blue  = linspace(0.8, 0.2471, 256)';

custom_map2 = [red, green, blue];

figure(4);
hold on;
view(20,20);
xlabel('x');
ylabel('y');
zlabel('f(x, y)');
title('Surface Plot of z(x,y) = 1 - (X^2 + Y^2); colormap "custom2"');
colormap(custom_map2);
colorbar;
surf(X,Y,Z);
view(3)
shading interp; 
hold off;
