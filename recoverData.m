function X_rec = recoverData(Z, U, K)
%
%   RECOVERDATA Recovers an approximation of the original
%   data when using the projected data
%   Bruce Haydon (New York, New York)
%
%   "X_rec" = RECOVERDATA(Z, U, K) recovers an approximation the 
%   original data that has been reduced to K dimensions. It returns the
%   approximate reconstruction in X_rec.
%
%   INPUTS:
%   "Z" = array of projections (mxK)
%   "U" = array of eigenvectors
%   "K" = reduced dimension of projections in array "Z"

% Initialize the output variables.
X_rec = zeros(size(Z, 1), size(U, 1));

% ============================================
% Description:  Computes the approximation of the data by projecting back
%               onto the original space using the top K eigenvectors in U.
%
%               For the i-th example Z(i,:), the (approximate)
%               recovered data for dimension j is given as follows:
%                    v = Z(i, :)';
%                    recovered_j = v' * U(j, 1:K)';
%
%               Notice that U(j, 1:K) is a row vector.
%          
%        Xapprox' = U_reduce * Z'
%         (m x n)    (n x K)   (K * m)     

U_reduce = U(:,1:K);  % (n x K)

Xapprox = U_reduce * Z';   %  (n x K) * (m x K)' --> (n x m);


X_rec = Xapprox';    % (m x n)


% =============================================================

end
