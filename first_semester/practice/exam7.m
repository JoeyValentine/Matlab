clear
syms t
w = @(t) 0.2 * t + 9;
h = @(t) 0.3 * t + 4;
a = @(t) w(t) * h(t);
for i = 0 : 0.001 : 1000
   if abs(double(w(i)-h(i))) < 10 ^ -17
      disp(double(subs(diff(a(t),t),t,i))) 
   end
end
