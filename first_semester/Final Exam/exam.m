clear
syms x
f = @(x) x.^2 + x + 3;
double(subs(diff(f(x),x),10))
%double ����Ͽ� ��Ȯ�� ���� ��Ÿ����
