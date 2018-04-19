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



% Choose some alpha value
alpha = 0.05;
num_iters = 20000 ;


% Init W and Run Gradient Descent 
w = zeros(3, 1);
[w, J_history] = gradientDescentMulti(X, y, w, alpha, num_iters);

% Plot the convergence graph
figure;
plot(1:numel(J_history), J_history, '-b', 'LineWidth', 2);
xlabel('Number of iterations');
ylabel('Cost E');

% Display gradient descent's result
fprintf('W computed from gradient descent: \n');
fprintf(' %f \n', w);
fprintf('\n');
