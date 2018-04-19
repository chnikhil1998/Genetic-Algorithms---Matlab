function [X , rank]  = nondomsorting(X,f1,f2)
pop_size = size(X,1) ; % Population Size
rank = zeros(pop_size,1);

for i=1:pop_size
    counter = 0;
    for j=1:pop_size
        if (f1(j) < f1(i)) && (f2(j) < f2(i))
            counter = rank(j) ;
        end
    end
    rank(i) = counter + 1;
end


X = [X,rank];
X = sortrows(X,2);
rank = X(:,2);
X = X(:,1);

X = [X,rank];
X = sortrows(X,2);
rank = X(:,2);
X = X(:,1);

