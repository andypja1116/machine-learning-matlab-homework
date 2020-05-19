function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
     pred=X*theta;
     sqrerror=(pred-y)';
     X_1=X(:,1);
     X_2=X(:,2);
     sum_1=sqrerror*X_1;
     sum_2=sqrerror*X_2;
     theta_1=theta(1)-alpha*sum_1/m;
     theta_2=theta(2)-alpha*sum_2/m;
     theta=[theta_1;theta_2];





    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
