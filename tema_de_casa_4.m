amplitudine = 0.8;
perioadaInitiala = 3;
frecventaInitiala = 1/perioadaInitiala;
wi = 2*pi*frecventaInitiala;

function redresareMonoalternanta(amplitudine,w,time,signal)
  for i=1:length(time)
    aux = amplitudine*sin(w*time(i));
    if(aux < 0)
     signal = [signal 0];
    else
      signal = [signal  aux]; 
    endif
  endfor
  subplot(2,1,2),plot(time,signal), title("Semnal redresat"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
end

amplitudine = 0.8;
perioadaInitiala = 3;
frecventaInitiala = 1/perioadaInitiala;
wi = 2*pi*frecventaInitiala;

rezolutie1 = 0.002;
rezolutie2 = 0.02;
rezolutie3 = 0.2;

t1 = 0:rezolutie1:perioadaInitiala*4;
t2 = 0:rezolutie2:perioadaInitiala*4;
t3 = 0:rezolutie3:perioadaInitiala*4;

semnalNeRedresat1 = amplitudine*sin(wi*t1);
subplot(2,1,1), plot(t1,semnalNeRedresat1), title("Semnal nerederesat rez: 2ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
semnalRedresat1 = [];
redresareMonoalternanta(amplitudine,wi,t1, semnalRedresat1);

figure;
semnalNeRedresat2 = amplitudine*sin(wi*t2);
subplot(2,1,1), plot(t2,semnalNeRedresat2), title("Semnal nerederesat rez: 20ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
semnalRedresat2 = [];
redresareMonoalternanta(amplitudine,wi,t2, semnalRedresat2);

figure;
semnalNeRedresat3 = amplitudine*sin(wi*t3);
subplot(2,1,1), plot(t3,semnalNeRedresat3), title("Semnal nerederesat rez: 200ms"), xlabel("Timp [s]"), ylabel("Amplitudine [V]"), grid;
semnalRedresat3 = [];
redresareMonoalternanta(amplitudine,wi,t3, semnalRedresat3);
