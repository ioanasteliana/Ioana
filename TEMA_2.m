P=40; %P este perioada semnalului
D=20; %D este numarul din catalogul de studenti
N=50; %N este numarul de coeficienti Fourier
f=1/P; %f este frecventa semnalului
w=2*pi*f; %w estefrecventa normata
rez=10*f; %rez este rezolutia semnalului, aceasta trebuie sa fie minim 2*f pentru a respecta conditia Nyquist
inter1=D/rez;%cate esantioane sunt pe frontul descrescator/crescator al semnalului
s1=[linspace(1,0,inter1),linspace(0,1,P/rez-inter1)]; 

%linspace genereaza un vector de esantioane egal departate, intre un anumit
%interval
  
t=0:rez:P; %t este timpul echivalent petru o perioada
perioada=P/rez; %reprezinta cate esantioane avem intr-o perioada
stem(s1)
title('O perioada din semnalul triunghiular')
xlabel('Timp [s]')
ylabel('Amplitudine')
	
  

semnal=repmat(s1,1,3);%repetam semnalul initial de 3 ori
figure
plot(semnal)
title('3 perioade din semnal')
xlabel('Timp [s]')
ylabel('Amplitudine')
	

%pentru calculul coeficientilor Xk corespunzatori seriei Fourier Complexe
xk=zeros(1,2*N+1);
for m=-N:1:N
  for l=1:1:perioada
xk(m+N+1)= xk(m+N+1)+semnal(l)*exp(-1i*m*w*t(l));
  end
    end
figure
stem((-N:N),abs(xk))
title('Spectrul semnalului') 
s_reconstruit=zeros(1,perioada); 
	    for m=-N:1:N
	        s_reconstruit(l)= s_reconstruit(l)+xk(m+N+1)*exp(1i*m*w*t(l)); 
	    end
	end
	s_reconstruit=s_reconstruit/perioada;
  
	figure
	plot(s1,'color','m')
	hold on
	plot(real(s_reconstruit),'--','color','g')
	title('Semnalul initial cu magenta, semnalul reconstruit cu verde punctat')
	
	%Explicatii:
	%Semnalul reconstruit pe baza formulei, folosind acei N coeficienti
	%calculati, reprezinta , cum observam si in formula, o suma de sinusi, si daca
	%marim numarul de coeficienti N, aproiem si semnalul recunstruit de forma
	%sa ideala (triunghi) , iar daca micsoram numarulde coef.
	%N, putem observa pe figura sinusii , adica cum e reconstruit semnnalul
	%ca atare.
