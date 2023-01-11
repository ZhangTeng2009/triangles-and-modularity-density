function [S] = Algorithm2(W, A, ratio, k)
    W = ratio*A + (1-ratio)*W;
    B = 2*W-diag(sum(W));
    n = length(W);
    max(max(diag(sum(W))));
    C = max(max(diag(sum(W))))*eye(n) + B;

    P = symnmf_anls(C, k);
    for i = 1 : n
        [~, S(i)] = max(P(i,:));
    end
    
end

