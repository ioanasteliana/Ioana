perioada = 2;

frecventa = 1/perioada;

w = 2*pi*frecventa; % pulsatia

rezolutie1 = 0.002; % 2ms
rezolutie2 = 0.02; %20ms
rezolutie3 = 0.2; %2ms

t1 = 1:rezolutie1:perioada * 4;
t2 = 0:rezolutie2:perioada * 4;
t3 = 0:rezolutie3:perioada * 4;

duty = 1/4; % factor de umplere

semnalDreptunghilar1 = ((3/4)*square(t1*w, duty)) - (1/4);
semnalDreptunghilar2 = ((3/4)*square(t2*w, duty)) - (1/4);
semnalDreptunghilar3 = ((3/4)*square(t3*w, duty)) - (1/4);

subplot(3,1,1),plot(t1,semnalDreptunghilar1), title("Semnal dreptunghilar rez: 2ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
subplot(3,1,2),plot(t2,semnalDreptunghilar2), title("Semnal dreptunghilar rez: 20ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
subplot(3,1,3),plot(t3,semnalDreptunghilar3), title("Semnal dreptunghilar rez: 200ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
