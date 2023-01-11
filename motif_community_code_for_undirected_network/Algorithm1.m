function [S] = Algorithm1(W ,A, ratio, k)
    W = ratio*A + (1-ratio)*W;
    B = 2*W-diag(sum(W));

    eig_opts = {};
    eig_opts.tol = 1e-6;
    eig_opts.isreal = true;
    eig_opts.issym = true;
    %'lm' ��ʾ����ֵ��������ֵ��'sm' ����ֵ��С����ֵ����ʵ�Գ����⣺'la'��ʾ�������ֵ��'sa'Ϊ��С����ֵ���ԷǶԳƺ͸������⣺'lr' ��ʾ���ʵ����'sr' ��ʾ��Сʵ����'li' ��ʾ����鲿��'si'��ʾ��С�鲿
    [U, ~] = eigs(B, k, 'la', eig_opts);
    D = spdiag(1./sqrt(sum(abs(U).^2, 2)));
    Y = D * U;
    rep = 200;
    S = kmeans(Y, k,'Replicates', rep, 'EmptyAction', 'singleton');
end

