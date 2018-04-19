function p = tselection(X,rank,cd)
pop_size = 10;   % Poppulation size

p = zeros(pop_size,1);


for i = 1: pop_size
    
    a = 1+round(rand()*(pop_size-1));
    b = 1+round(rand()*(pop_size-1));
    
    if rank(a) < rank(b) 
        p(i) = X(a);
    elseif rank(a) > rank(b)
        p(i) = X(b);
    else
        if cd(a) > cd(b)
            p(i) = X(a);
        elseif cd(a) < cd(b)
            p(i) = X(b);
        else
            if rand() < 0.5 
                p(i) = X(a);
            else
                p(i) = X(b);
            end
        end
    end
end