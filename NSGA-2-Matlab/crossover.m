function cc = crossover(p)
N = 10 ; % Population Size
pc = 0.8; % Probability of Crossover = 0.8
mu = 20 ; % Distribution index of crossover
b = 0 ;
cc = zeros(2*N*pc,1);
for i = 1:N*pc
    r1 = ceil(N*rand());
    r2 = ceil(N*rand());
    r = rand();
    if r <= 0.5
        b = (2*r)^(1/(mu+1));
    else
        b =   (1/(2*(1-r)))^(1/(mu+1));
    end
    cc(2*i - 1) = 0.5*( (1+b)*p(r1) + (1-b)*p(r2)  );
    cc(2*i) = 0.5*( (1-b)*p(r1) + (1+b)*p(r2)  );
end

    
    
