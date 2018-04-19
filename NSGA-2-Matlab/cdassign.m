function cd  = cdassign(X,rank,f1,f2)
pop_size = size(X,1);
cd = ones(pop_size,1)*100;

for j = 2: pop_size-1
    
    
         
    if rank(j) == rank(j-1)
        cd(j) = (f1(j+1)-f1(j-1))/(max(f1)-min(f1)) + (f2(j+1)-f2(j-1))/(max(f2)-min(f2));
    else
        cd(j) = 100;
        cd(j-1) = 100;
    end
end

if rank(pop_size) ~= rank(pop_size-1)
    cd(pop_size-1) = 100;
end





