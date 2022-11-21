function [T, X] = MidDot(func , t, X0)
%
% MathematicalPendulum решает дифференциальное уравнение математического
% маятника методом средней точки:
%
%     m * l^2 * Q'' + k * l^2 * Q' + m * g * l * sinQ = u
%
% с входными параметрами:
%
%     m = 1,2 kg
%     l = 1,2 m
%     k = 2,2 H/m
%     g = 9,81 H/m^2
%     u = 1,3 H*m
%
n = length(t);
m = length(X0);
T = t;
X = zeros(n, m);
X(1, :) = X0;

for i = 1: n - 1
    dt = T(i + 1) - T(i);
    K1 = dt * func(T(i), X(i, :));
    K2 = dt * func(T(i) + dt / 2, X(i, :) + K1' / 2);
    X(i + 1, :) = X(i, :) + K2';
end
end
