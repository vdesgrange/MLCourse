function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
thetaTmp = [ zeros(1, size(theta,2)); theta(2:end,:)];

h		= X * theta;

J		= sum((h - y) .^ 2);
Jreg	= lambda .* sum(power(thetaTmp, 2));
J		= 1 / (2 * m) * ( J .+ Jreg );

grad	= sum((h - y) .* X, 1)';
gradReg = lambda .* thetaTmp;
grad	= 1 / m * (grad .+ gradReg);

% =========================================================================

grad = grad(:);

end
