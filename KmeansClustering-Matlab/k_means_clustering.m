clear ; close all; clc


% Loading Data
data = load('iris.data.txt');
X = data(:,1:4);

% n = No of clusters , M = No of features , T = No of training examples
N = 3;
M = 4;
T = 150;

% Initialising N number of clusters clusters
C = zeros(N,M);

for i = 1:N 
    C(i,:) = X(int8(rand(1) * T),:);
    
end

[P Q R C counter] = algorithm(X,C);

while(counter!=0)
    [P Q R C counter] = algorithm(X,C);
    
end

