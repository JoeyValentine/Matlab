clear
syms x
f = @(x) 3*x.^3 + 4*x.^2 - 2*x - 1;
val = 1/2 * int(f(x),x,-1,1);

for N = 1 : 1 : 100000
    sum = 0;
    for k = 1 : 1 : N
        sum = sum + f(-1+2*k/N)/N;
    end
    
    if abs(val - sum) < 1/1024
        break;
    else
        N = 0;
        sum = 0;
    end
end
disp([sum,N])
