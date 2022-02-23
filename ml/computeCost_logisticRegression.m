function [J, grad] = computeCost_logisticRegression(X, y, theta)
  number_of_training_examples = length(y);
  cost = 0;
  grad = zeros(size(theta));
  h = sigmoid(X * theta); % different for logistic regression (cf. linear regression h)
  
  cost = (1/number_of_training_examples) * sum(-y .* log(h) - (1 - y) .* log(1 - h))
  grad = (1/number_of_training_examples) * sum((h-y) .* X)
  
  J = cost
endfunction


% data = load('some_file.txt');
% X = data(:, [1, 2]); y = data(:, 3);
% [m, n] = size(X);
% X = [ones(m, 1) X]; % add intercept term
% initial_theta = zeros(n + 1, 1);
% [cost, grad] = costFunction(initial_theta, X, y);
