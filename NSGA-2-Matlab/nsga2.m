%------------------- NSGA - 2 ---------------------

% Initialising population
clc;
clear;
pop_size = 10;
X = zeros(pop_size,1);
p = zeros(pop_size,1);

cd = ones(pop_size,1)*100;




for i=1:pop_size
    X(i) = -5 + 10 * rand();
end

X(1) = -0.414;
X(2) = 0.467;
X(3) = 0.818;
X(4) = 1.735;
X(5) = 3.210;
X(6) = -1.272;
X(7) = -1.508;
X(8) = -1.832;
X(9) = -2.161;
X(10) = -4.105;

for l = 1:40

% Evaluating fitness values
f1 = X.*X;
f2 = (X - 2).*(X - 2);

 


% Fast Non-Dominating Sorting

[X , rank] = nondomsorting(X,f1,f2);

% Evaluating new fitness values after sorting
f1 = X.*X;
f2 = (X - 2).*(X - 2);

% Crowding distance assignment



% Tournament Selection

p = tselection(X,rank,cd);


% Crossover

cc = crossover(p);

% Mutation

cm = mutation(cc);


% Non Dom sorting of new values

X = [X;cc;cm];

f1 = X.*X;
f2 = (X - 2).*(X - 2);

rank = zeros(size(X,1),1);

[X , rank] = nondomsorting(X,f1,f2);
cd = cdassign(X,rank,f1,f2);

X = [X,rank,cd];

X = sortrows(X,3,'descend');

X = sortrows(X,2);

X = X(1:10,:);


end



figure;
grid on;
plot(f1,f2,'o');


    
        
    
    







