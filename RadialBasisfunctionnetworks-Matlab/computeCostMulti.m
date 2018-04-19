function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

P = (X * theta - y);
Q = 0.5 / m * P .* P ;
J = sum(Q);


end
