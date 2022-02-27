function centroids = computeCentroids(X, idx, K)
%  
%   COMPUTECENTROIDS returns the new centroids by computing the means of the 
%   n  data points assigned to each centroid.  (Bruce Haydon)
%
%   "centroids" = COMPUTECENTROIDS(X, idx, K) 
%    returns the new centroids by 
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%   
%   "idx" = centroid assignment(m x 1) vector (range 1..K) for data pt in "X"
%   "K" = number of centroids (1 x 1)
%   "X" = 2D dataset where each row = single data point (m x 2)
%   "centroids" = matrix where each row = mean of data points assigned to it
%
%    centroid mean u(k) = 1/|C(k)| * sum ( x(i))
%    where C(k) is set of examples assigned to centroid "k"
%    and |C(k)| is number of assigned examples

% Initialize variables with size
[m n] = size(X);

% Intialize return variable.
centroids = zeros(K, n);


% ===========================================
% Description : Program cycles through every centroid and compute mean 
%               of all points that belong to it. 
%               Row vector centroids(i, :)
%               contain the mean of the data points assigned to
%               centroid i.
%
%  Vector operations are used where possible, but a
%  for-loop over the centroids to compute mean.
%

for c = 1:K
  
      csum = sum(X(idx==c,:));
      ccount = sum(idx==c);
      new_mean = csum / ccount;
      centroids(c,:) = new_mean;
      
endfor
      
      
      






% =============================================================


end

