function [X, iter, is_converge, norm_grad] = newton_method(f,X, max_iter, tol)
  iter = 1;
  is_converge = 0;
  norm_grad = 9999999;
  while iter <= max_iter
    iter += 1;
    X0 = X;
    [H, grad] = hessian(f, X);
    norm_grad = norm(grad);
    if norm_grad <= tol
      is_converge = 1;
      break;
    end
    v = H\-grad;
    X = X0 + v';
  end
end
