function D = spdiag( v )
%SPDIAG Summary of this function goes here
%   Detailed explanation goes here
D = spdiags(v, 0, length(v), length(v));

end

