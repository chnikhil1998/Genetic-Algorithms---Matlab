%------------ Radial Basis Function Networks-----------------------
N = 4;
M = 2;
eta = 1;
% Initialisation

x = [0,0;0,1;1,0;1,1];
yd = [1;0;0;1];
h = zeros(4,2);
y = zeros(4,1);
delh = zeros(2,1);



for i=1:2
    for j=1:2
        w_h(i,j) = -1 + 2 * rand();
        w_y(i) = -1 + 2 * rand();
    end
end


    
    
    
    
    
    
    
    
    
    
    
    
    
    
for i=1:4
  h(i,1) = sum(x(i,:) .* w_h(1,:));
  h(i,2) = sum(x(i,:) .* w_h(2,:));  
end

for i=1:4
    
   y(i) = sum( h(i,:).*w_y );
   
    
    
end

Ey = y.*(1-y).*(yd-y);
delalph = sqrt(sum(sum(Ey.^2))/prod(size(Ey)));

%Updating w_y values
for i = 1:2
w_y(i) = w_y(i) + (eta * delalph * sqrt(sum(sum(h(:,i).^1))/prod(size(h(:,i)))) );
end


for i=1:2
p = h(:,i).*(1 - h(:,i)).*  ( delalph * w_y(i) );
delh(i) = sqrt(sum(sum(p.^2))/prod(size(p)));

end

% Updating w_h values

for i =1:2
    for j=1:2
        
        w_h(i,j) = w_h(i,j) + (eta * delh(i) * 0.5);
        
        
    end



    
    
    
    
    
    
    
    
    
    
end














        
    
    
    
    















