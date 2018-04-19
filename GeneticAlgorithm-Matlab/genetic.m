
% ---------------------- Genetic Algorithm---------------------

% Parameters
N = 100;          % Population size = 50
x = zeros(N,1);



%    Initialisation

for i =1:N
    x(i) = 6.28*rand();
end


% Plotting
figure ;
hold on;
x_sine = 0:pi/100:2*pi;
y_sine = sin(x_sine);
plot(x_sine,y_sine);
plot(x,sin(x),'o');
grid on;
hold off;



for k=1:100
    % Evaluation
fit_x = sin(x);

%Tournament Selection

p = tselection(x);

% Crossover

cc = crossover(p);

% Mutation

cm = mutation(cc);

%Selection of N chromosomes based on fitness

R = zeros(292,1);
for i=1:N
    R(i) = x(i);
end
for i=1:160
    R(N+i) = cc(i);
end
for i=1:32
    R(260+i) = cm(i);
end
fit_R = sin(R);

% workin' matrix
Result = [fit_R,R]

% sort
Result_new = sortrows(Result);


x = Result_new(1:N,2);



% Plotting
figure ;
hold on;
plot(x_sine,y_sine);
plot (x,sin(x),'o');
grid on;
hold off;


end


