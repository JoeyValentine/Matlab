clear
syms x
f = @(x) x.^2 + x + 3;
double(subs(diff(f(x),x),10))
%double 사용하여 정확한 값을 나타내자
