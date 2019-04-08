clear
f = @(t) t.^3;
appDer = @(t, dt) (f(t+dt)- f(t))/dt;
for delta = 1 : -0.001 : 0
    if appDer(0,delta) < 0.01 
        break
    end
end
disp([delta,appDer(0,delta)])
