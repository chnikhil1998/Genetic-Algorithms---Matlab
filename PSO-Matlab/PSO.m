
% ----------------- PArticle Swarm Optimisation-------------

% Parameters
N = 100;          % Population size = 50

%    Initialisation
x = zeros(N,1);
v = zeros(N,1);
for i =1:N
    x(i) = 6.28*rand();
    v(i) = 6.28*rand();
end

% Plotting
figure ;
hold on;
plot(x,v,'o');
hold off;

%Fitness


pbest = x;
gbest = max(pbest);

for i=1:1000000
    
    for j = 1:N
       if fitness(x(j)) > fitness(pbest(j))
           pbest(j) = x(j);
       end
       gbest = max(pbest);
       v(j) = 0.8 * v(j) + rand()*(pbest(j)-x(j)) + rand()*(gbest-x(j));
       x(j) = x(j) + v(j);
        
    end
    
    
    
    

end

% Plotting
figure ;
hold on;
plot(x,v,'o');
hold off;