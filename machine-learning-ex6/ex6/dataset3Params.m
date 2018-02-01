function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

%list	= [0.01 0.03 0.1 0.3 1 3 10 30];
%bestPredictionsErr	= Inf;
%predictionsErr		= Inf;
%bestC	= C;
%bestSig	= sigma;

%for tmpC=list
%	for tmpSig=list
%		fprintf('\n Training cross validation set with:\n C=%f, sigma=%f', tmpC, tmpSig);
%		model			= svmTrain(X, y, tmpC, @(x1, x2) gaussianKernel(x1, x2, tmpSig));
%		predictions		= svmPredict(model, Xval);
%		predictionsErr	= mean(double(predictions ~= yval));
		
%		if (predictionsErr < bestPredictionsErr)
%			bestPredictionsErr = predictionsErr;
%			bestC	= tmpC;
%			bestSig	= tmpSig;
%		endif

%	endfor

%endfor

%fprintf('\n Best value found:\n C=%f, sigma=%f', bestC, bestSig);
%C		= bestC;
%sigma	= bestSig;

% Results find based on the the above algorithm.
C		= 1;
sigma	= 0.1;
% =========================================================================

end
