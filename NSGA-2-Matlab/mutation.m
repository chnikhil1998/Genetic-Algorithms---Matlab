function cm = mutation(cc)
Nc = 16 ; % Size of Crossover population
pm = 0.2; % Probability of Mutation 
eta = 20 ; % Distribution index of mutation
d = 0 ;
cm = zeros(ceil(Nc*pm),1);
for i=1:ceil(Nc*pm)
    r1 = ceil(Nc*rand());
    r = rand();
    if r <= 0.5
        d = (2*r)^(1/(eta+1)) - 1 ;
    else
        d = (1-(2*(1-r)))^(1/(eta+1));
    cm(i) = cc(r1)+d    ;
    end
end
