function [T, X] = Adamsa_Bashvorda_5(func, t, X0)
%
% Adams_Bashvorda_5 решает дифференциальное уравнение математического маятника
% методом Адамса Башворда 5-го порядка:
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
X = zeros(n,m);
X(1,:) = X0;

[T(1:5),X(1:5,:)]= Runge_Kuta(func, t(1:5), X0);
for i = 5 : n-1
    dt = T(i+1)-T(i);
    X(i+1,:)=X(i,:)+(1901/720)*dt*func(t(i),X(i,:))'-(1387/360)*dt*func(t(i-1), X(i-1,:))'+(1308/360)*dt*func(t(i-2), X(i-2,:))'-(637/360)*dt*func(t(i-3), X(i-3,:))'+(251/720)*dt*func(t(i-4), X(i-4,:))';
end

end
