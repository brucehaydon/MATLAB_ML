function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%
%   Bruce Haydon (New York, NY)
%

% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ============================================
% Description : Goes over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) contains the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% 
%

for X_count =1:(size(X,1));
 mindist = inf;
  
  
  for centroid= 1:K;
     
     % Remember to add the ":" since you want to subtract all columns in that
     % row
     distance = sum((X(X_count,:)-centroids(centroid,:)).^2);
     
     if mindist > distance;
        mindist = distance;
       idx(X_count,1) = centroid;
     endif
  endfor
endfor


% =============================================================

end

