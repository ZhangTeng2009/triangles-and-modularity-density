clear all;
clc;

%----------------------------------------------------------------------
X = load('.\data\Karate_club.csv');
%----------------------------------------------------------------------
%Converts data into an adjacency matrix;
[A] = DataToMatrix(X);
%----------------------------------------------------------------------
[W] = MotifToMatrix(A);

ratio = 0.4; % the parameter ¦Á
c = 2; % the number of communities

[S] = Algorithm1(W ,A, ratio, c);
%[S] = Algorithm2(W ,A, ratio, c);

%----------------------------------------------------------------------
for i = 1 : c
    community_number = find(S == i);
    communities = ['The',' ', num2str(i), '-th community consists of : ', num2str(community_number'), ';'];
    disp(communities);
end