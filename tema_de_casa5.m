amplitudine = 1.5;
perioada = 4;
frecventa = 1/perioada;
w = 2*pi*frecventa;

rezolutie1 = 0.002;
rezolutie2 = 0.02;
rezolutie3 = 0.2;

t1 = 0:rezolutie1:perioada*5;% 5 perioade
t2 = 0:rezolutie2:perioada*5;% 5 perioade
t3 = 0:rezolutie3:perioada*5;

semnalInitial1 = amplitudine*sin(w*t1);
subplot(2,1,1), plot(t1, semnalInitial1), title("Semnal sinusoidal initial rez: 2ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
subplot(2,1,2), plot(t1, abs(semnalInitial1)), title("Semnal sinusoidal redresat dubla-alternanta"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;

figure;
semnalInitial2 = amplitudine*sin(w*t2);
subplot(2,1,1), plot(t2, semnalInitial2), title("Semnal sinusoidal initial rez: 20ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
subplot(2,1,2), plot(t2, abs(semnalInitial2)), title("Semnal sinusoidal redresat dubla-alternanta"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;

figure;
semnalInitial3 = amplitudine*sin(w*t3);
subplot(2,1,1), plot(t3, semnalInitial3), title("Semnal sinusoidal initial rez: 200ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
subplot(2,1,2), plot(t3, abs(semnalInitial3)), title("Semnal sinusoidal redresat dubla-alternanta"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
