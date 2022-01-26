function J = computeCost_linearRegression(X, y, theta)
  number_of_training_examples = length(y);
  h = X * theta;
  J = (1/(2*number_of_training_examples)) * sum((h - y) .^ 2)
endfunction
