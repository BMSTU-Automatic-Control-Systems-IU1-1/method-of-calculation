clc
clear variables
close all force

global m l k g u 

% Main строит график решения дифференциального уравнения математического
% маятника:
%
%    m * l^2 * Q'' + k * l^2 * Q' + m * g * l * sinQ = u
%
% с входными параметрами:
%
%    m = 1,2 kg
%    l = 1,2 m
%    k = 2,2 H/m
%    g = 9,81 H/m^2
%    u = 1,3 H*m
%

m = 1.2;
l = 1.2;
k = 2.2;
g = 9.81;
u = 1.3;

t = 0:0.01:10;
X0 = [0,0];

[T, X] = ode45(@MathematicalPendulum, t, X0);
[T, X1] = Euler(@MathematicalPendulum, t, X0);
[T, X2] = Euler_Koshi(@MathematicalPendulum, t, X0);
[T, X3] = MidDot(@MathematicalPendulum, t, X0);
[T, X4] = Adamsa_Bashvorda_3(@MathematicalPendulum, t, X0);
[T, X5] = Adamsa_Bashvorda_5(@MathematicalPendulum, t, X0);
[T, X6] = Runge_Kuta(@MathematicalPendulum, t, X0);

figure, plot( ...
    t, X(:,1), ...
    t, X1(:, 1), ...
    t, X2(:, 1), ...
    t, X3(:, 1), ...
    t, X4(:, 1), ...
    t, X5(:, 1), ...
    t, X6(:, 1));
legend( ...
    'ode45', ...
    'Euler', ...
    'Euler_Koshi', ...
    'MidDot', ...
    'Adamsa_Bashvorda_3', ...
    'Adamsa_Bashvorda_5', ...
    'Runge_Kuta');
grid on
