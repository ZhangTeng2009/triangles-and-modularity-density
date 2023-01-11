function [A] = DataToMatrix(X)

[row col] = size(X);
J = ones(row, col);
min_label_vertex = min(min(X));%the label of vertex
max_label_vertex = max(max(X));%the label of vertex
vertex_number = max_label_vertex;
if min_label_vertex == 0
    vertex_number = vertex_number + 1;
    X = X + J;
end
adjacency_matrix = zeros(vertex_number, vertex_number);
for j = 1 : row
    adjacency_matrix(X(j,1),X(j,2)) = 1;
    adjacency_matrix(X(j,2),X(j,1)) = 1;
end
A = adjacency_matrix;

end

