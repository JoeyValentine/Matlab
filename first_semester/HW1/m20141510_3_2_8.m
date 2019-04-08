clear
syms fEuler dfdt

tI = 0;
tF = 3;
deltat = 0.5;
fInitialValue = 0;

times = tI:deltat:tF;

fEuler(1) = fInitialValue;
for i = 1:1:(length(times)-1)
    dfdt(i) = sin(2*times(i));
    fEuler(i+1) = fEuler(i) + dfdt(i) * deltat;
end

plot(times,fEuler);
