function [weights, cost] = getOptimalWeights_logisticRegression(X, y, initial_theta)
  options = optimset('GradObj', 'on', 'MaxIter', 400);
  [weights, cost] = fminunc(@(t)(computeCost_logisticRegression(X, y, t)), initial_theta, options);
endfunction

% data = load('some_file.txt');
% X = data(:, [1, 2]); y = data(:, 3);
% [m, n] = size(X);
% X = [ones(m, 1) X]; % add intercept term
% initial_theta = zeros(n + 1, 1);
% [cost, grad] = costFunction(initial_theta, X, y);
% [theta, cost] = getOptimalWeights_logisticRegression(Y, y, initial_theta)
