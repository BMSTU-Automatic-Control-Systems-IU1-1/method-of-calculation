function [T, X] = Euler(func, t, X0)
%
% Euler решает дифференциальное уравнение математического маятника
% методом Эйлера:
%
%     m * l^2 * Q'' + k * l^2 * Q' + m * g * l * sinQ = u
%
% c входными параметрами:
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
X(1,:) = X0;

for i = 1:n - 1
    dt = T(i + 1) - T(i);
    K = dt * func (T(i), X(i, :));
    X(i + 1, :) = X(i, :) + K';
end
end
