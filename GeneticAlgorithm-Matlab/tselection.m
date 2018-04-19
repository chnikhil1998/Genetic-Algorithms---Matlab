function p = tselection(x)
N = 100   % Poppulation size
fit = fitness(x);
p = zeros(N,1);
for i = 1:N
    a = ceil(N*rand());
    b = ceil(N*rand());
    if fit(a) >= fit(b)
        p(i) = x(a);
    else 
        p(i) = x(b);
    end
end

