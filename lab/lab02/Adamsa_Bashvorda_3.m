function [T, X] = Adamsa_Bashvorda_3(func, t, X0)
%
% Adams_Bashvorda_3 решает дифференциальное уравнение математического маятника
% методом Адамса Башворда 3-го порядка:
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

n=length(t);
m=length(X0);
T=t;
X=zeros(n,m);
X(1,:)=X0;

[T(1:3), X(1:3,:)] = Runge_Kuta(func, t(1:3), X0);
for i=3:n-1
    dt=T(i+1)-T(i);
    X(i+1,:)=X(i,:)+(23/12)*dt*func(t(i),X(i,:))'-(4/3)*dt*func(t(i-1), X(i-1,:))'+(5/12)*dt*func(t(i-2), X(i-2,:))';
end

end