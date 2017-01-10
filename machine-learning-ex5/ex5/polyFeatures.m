function [X_poly] = polyFeatures(X, p)
%POLYFEATURES Maps X (1D vector) into the p-th power
%   [X_poly] = POLYFEATURES(X, p) takes a data matrix X (size m x 1) and
%   maps each example into its polynomial features where
%   X_poly(i, :) = [X(i) X(i).^2 X(i).^3 ...  X(i).^p];
%


% You need to return the following variables correctly.

X_poly = []
m = size(X,1);
% ====================== YOUR CODE HERE ======================
% Instructions: Given a vector X, return a matrix X_poly where the p-th 
%               column of X contains the values of X to the p-th power.
%
% 
for i = 1:m
	row = zeros(p,1);
	row(1) = X(i);
	for j = 2:p
		row(j) = row(j-1)*row(1);
	end
	X_poly = [X_poly ; row'];

end




% =========================================================================

end
