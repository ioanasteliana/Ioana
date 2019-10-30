f=50;
t=0:0.0001:0.2;
s=2*sin(2*pi*f*t);
f1= 20;
s1=2*cos(2*pi*f1*t);
plot(t,s,t,s1), xlabel('Timp[s]'),grid
