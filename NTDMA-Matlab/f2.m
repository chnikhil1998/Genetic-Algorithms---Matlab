function y = f2(T,A)
N = 12;
y = 0;
for i=1:N
    for j=1:N
        for k=1:A(i)
            
            y = y + (1/(T(i,k)-T(j,k)))^2 ;
            
        end
    end
end

            