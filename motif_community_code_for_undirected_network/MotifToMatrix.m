function [W] = MotifToMatrix(A)

M = [
    0 1 1
    1 0 1
    1 1 0
    ];
n = length(A);

T = zeros(n,n,n);
for i = 1 : n
    for j = 1 : n
        for k = 1 : n
            if (i ~= j && i ~= k && j ~= k)
                if A([i,j,k],[i,j,k]) == M
                    T(i,j,k) = 1;
                    T(i,k,j) = 1;
                    T(j,k,i) = 1;
                    T(j,i,k) = 1;
                    T(k,i,j) = 1;
                    T(k,j,i) = 1;
                end
            end
        end
    end
end
%Conterts the adjacency matrix to an 3-order adjacency tensor;

%conterts the 3-order adjacency tensor to weighted adjaceny matrix;
W = zeros(n, n);
for i = 1 : n
    for j = 1 : n
        W(i,j) = sum(T(i,j,:));
    end 
end
end

