% Parameters
M   = 44; % Number of Neurons
N   = 12; % Number of Nano Machines
time = 50; 

% Initialisation
A = ones(N,1);

for i= 1:N
    for j=1:time
        T(i,j) = j;
    end
end

for i=1:1000
    
    a = randi(N,1);
    b = randi(time,1);
    A_new = A;
    T_new = T;
  
  A_new(a) = A(a) + round(rand());
    T_new(a,b) = T(a,b) - round(rand());
    
    if (f1(A_new) >= f1(A(a))) && (f2(T_new,A_new) >= f2(T,A)) && (f3(T_new) <= f3(T)) && ( (f1(A_new) > f1(A(a))) || (f2(T_new,A_new) > f2(T,A)) || (f3(T_new) < f3(T)) )    
        A(a) = A_new(a);
        T(a,b) = T_new(a,b);
        

    
end
    
    f3(T)






end






