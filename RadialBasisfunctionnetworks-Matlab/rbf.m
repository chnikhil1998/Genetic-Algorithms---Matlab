%------------ Radial Basis Function Networks-----------------------
N = 4;
M = 2;

% Initialisation

x = [0,0;0,1;1,0;1,1];
y = [1;0;0;1];

c1 = [0,0];
c2 = [1,1];
c = [c1 ;c2];

phi = zeros(4,2);

for i=1:4
    phi(i,1) = exp(-1*sum( (x(i,:)-c1 ).*(x(i,:)-c1) ) );
    phi(i,2) = exp(-1*sum( (x(i,:)-c2 ).*(x(i,:)-c2) ) );
end

X = [phi ones(4,1)];

w = pinv(X'*X)*X'*y
    
    
    
    















