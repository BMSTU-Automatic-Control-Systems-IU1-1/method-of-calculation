function [Xp] = MathematicalPendulum (t, X)
%
% MathematicalPendulum решает дифференциальное уравнение математического
% маятника:
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

global m l k g u

Xp = zeros(2, 1);
Xp(1) = X(2);
Xp(2) = (u - k * l^2 * X(2) - m * g * l * sin(X(1))) / (m * l^2);

end
