s=[];
n=1:20;

 for i = 1:1:20
    random = randn();
    if( random > 0 )
        s(i) = 1;
    else
        s(i) = 0;
    end
end


stem(n,s), grid, ylim([-0.5 2])
