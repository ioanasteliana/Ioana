j=1;
x = randn(1,20);      
y = [];             
for i=1 : 1 : 20    
    if x(1,i) < 0
        y(1,j) = x(1,i);
        j=j+1;
    end
end

x= y              
