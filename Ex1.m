x=0:0.1:2;                   
lungime = length(x);       
                           
y = ones(lungime, 1);       
inmultire1 = x*y;
inmultire2 = y*x;
inmultire3 = ones(lungime);  
for i= 1: 1 :21              
    for j= 1: 1:21
        inmultire3(i,j) = y(i) * x(1,j)
    end
end
