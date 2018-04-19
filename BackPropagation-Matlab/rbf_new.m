%------------ Radial Basis Function Networks-----------------------
clc;
clear;


N = 4;
M = 2;
eta = 1;
% Initialisation

x = [0,0;0,1;1,0;1,1];
yd = [1;0;0;1];
E = zeros(4,1);
delh = zeros(2,1);
w_y = zeros(2,1);
w_h = zeros(2);
h = zeros(2,1);
counter = 1;

for i=1:2
    for j=1:2
        w_h(i,j) = -1 + 2 * rand();
        
    end
    w_y(i) = -1 + 2 * rand();
end

for k=1:2
for i =1:4
    
    for j=1:2
        h(j) = x(i,:)*w_h(:,j);
    end
    
    y = sum(sum(h.*w_y));
    
    E(i) = y.*(1-y).*(yd(i)-y);
    
    w_y = w_y + E(i) * h;
    
    delh = h .* (1-h) .* (E(i) * w_y);
    
    w_h = w_h + x(i,:)' * delh';
    
    
    
    
  
end
E_final(counter) = sqrt(sum(sum(E.^2))/prod(size(E)));
    counter = counter + 1;
end

counter = 1:1:counter-1;
figure;
hold on;
plot (counter , E_final);








