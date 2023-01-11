function [S] = Algorithm1(W ,A, ratio, k)
    W = ratio*A + (1-ratio)*W;
    B = 2*W-diag(sum(W));

    eig_opts = {};
    eig_opts.tol = 1e-6;
    eig_opts.isreal = true;
    eig_opts.issym = true;
    %'lm' 表示绝对值最大的特征值；'sm' 绝对值最小特征值；对实对称问题：'la'表示最大特征值；'sa'为最小特征值；对非对称和复数问题：'lr' 表示最大实部；'sr' 表示最小实部；'li' 表示最大虚部；'si'表示最小虚部
    [U, ~] = eigs(B, k, 'la', eig_opts);
    D = spdiag(1./sqrt(sum(abs(U).^2, 2)));
    Y = D * U;
    rep = 200;
    S = kmeans(Y, k,'Replicates', rep, 'EmptyAction', 'singleton');
end

