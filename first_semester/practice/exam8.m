syms x;
f = @(x) 3 * x.^3 + 4 * x.^2  - 2 *x - 1;
compVal = int(f,x,-1,1)/2;
disp(compVal)
for N = 1 : 1 : 10000
   sum = 0;
   for k = 1 : 1 : N
      sum = sum + 1/N * f(-1+2*k/N);
   end
   if abs(compVal - sum) < 1/1024
       disp([double(abs(compVal-sum)),N]);
       break
   end
end
