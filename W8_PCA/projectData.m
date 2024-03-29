function Z = projectData(X, U, K)
%
%   PROJECTDATA Computes the reduced data representation when projecting only 
%   on to the top "k" eigenvectors
%
%   "Z" = projectData(X, U, K) computes the projection of 
%
%   INPUTS:
%   "X" -> (m x n) array of data
%   "U" -> (n x n) eigenvectors from svd function
%   "K" = number of dimensions to reduce to (K < n)
%   the normalized inputs X into the reduced dimensional space spanned by
%   the first K columns of U. It returns the projected examples in Z.
%

% You need to return the following variables correctly.
Z = zeros(size(X, 1), K);

% ============================================
% Description:   Computes the projection of the data using only the top K 
%               eigenvectors in U (first K columns). 
%
%               For the i-th example X(i,:), the projection on to the k-th 
%               eigenvector is given as follows:
%                    x = X(i, :)';
%                    projection_k = x' * U(:, k);
%

% Create reduced set of eigenvectors%
U_reduce = U(:, 1:K);    %"U_reduce" -> (nxK) 

Z = X * U_reduce;     % ((m x n) * (n x k) -> (m x k)


% =============================================================

end
