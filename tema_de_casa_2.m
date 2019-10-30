perioada = 5;
frecventa = 1/perioada;
w = 2*pi*frecventa;
rezolutie1 = 0.002;
rezolutie2 = 0.02;
rezolutie3 = 0.2;

t1 = 0:rezolutie1:perioada * 4;
t2 = 0:rezolutie2:perioada * 4;
t3 = 0:rezolutie3:perioada * 4;

semnalTriunghiular1 = (-1*(0.5*((3*sawtooth(t1*w, 0.2))+3))) + 1;
semnalTriunghiular2 = (-1*(0.5*((3*sawtooth(t2*w, 0.2))+3))) + 1;
semnalTriunghiular3 = (-1*(0.5*((3*sawtooth(t3*w, 0.2))+3))) + 1;

 plot(t1,semnalTriunghiular1), title("Semnal triunghiular rez: 2ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
