clear all;
clc;

%----------------------------------------------------------------------

X = load('.\data\Cora.mat');
A = X.A;
label = X.label;
uA = X.uA;
pairs = X.pairs;

% X = load('.\data\blog_edges.txt');
% DiG = digraph(X(:,1)+1,X(:,2)+1);
% G = graph(X(:,1)+1,X(:,2)+1);
% A = full(DiG.adjacency);
% uA = full(G.adjacency);

%----------------------------------------------------------------------
n = length(A);
%Due to the large space complexity of the tensor, the function of MotifAdjacency was used here to calculate the number of modules between nodes.
%See http://snap.stanford.edu/higher-order/code.html
W = MotifAdjacency(A, 'm10');

%conterts the 3-order adjacency tensor to weighted adjaceny matrix;
ratio = 0.5;
c = 7;

[S] = Algorithm1(W ,uA, ratio, c);
%[S] = Algorithm2(W ,uA, ratio, c);
for i = 1 : c
    community_number = find(S == i);
    communities = ['The',' ', num2str(i), '-th community consists of : ', num2str(community_number'), ';'];
    disp(communities);
end