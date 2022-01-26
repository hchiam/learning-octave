function [theta, J_history] = gradientDescent(X, y, theta, alpha, iteration_count) % batched, not stochastic
    number_of_training_examples = length(y);
    J_history = zeros(iteration_count, 1);
    for iter = 1:iteration_count
        h = X * theta;
        theta0 = theta(1) - (alpha / number_of_training_examples) * sum(h - y); % assumes first column of X is all 1s
        theta1 = theta(2) - (alpha / number_of_training_examples) * sum((h - y) .* X(:,2));
        theta = [theta0; theta1];
        cost = computeCost(X, y, theta);
        % disp(cost) % should decease and converge
        J_history(iter) = cost; % save the cost J on every iteration
    endfor
endfunction
