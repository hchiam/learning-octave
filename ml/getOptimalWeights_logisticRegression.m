function [weights, cost] = getOptimalWeights_logisticRegression(X, y, initial_theta)
  options = optimset('GradObj', 'on', 'MaxIter', 400);
  [weights, cost] = fminunc(@(t)(computeCost_logisticRegression(X, y, t)), initial_theta, options);
endfunction
