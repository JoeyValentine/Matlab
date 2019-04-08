clear;

syms x;
f = @(x) 4 * x.^3 - 16 * x;
a = -1;
b = 2;
dx = @(n) (b-a)/n;

sum1 = dx(1) * f(a + dx(1));
sum2 = 0;
for i = 1 : 1 : 2
    sum2 = sum2 + dx(2) * f(a + dx(2)*i);
end

if sum2 > sum1
    isInc = 1;
else 
    isInc = 0;
end

for n = 3 : 1 : 1000
    sum1 = sum2;
    sum2 = 0;
    for i = 1 : 1 : n
        sum2 = sum2 + dx(n) * f(a + dx(n)*i);
    end
    if sum2 > sum1
        if isInc == 0
            break;
        else 
            n = 0;
        end
    elseif sum2 < sum1
        if isInc == 1
            break;
        else
            n = 0;
        end
    end    
end
disp(n)
