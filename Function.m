function [a, loop] = Function(a , g)


   
tol = 1e-9;     % the specified tolerance in the absolute error
    % max. number of iterations
loop = 0       % counter for the loops
absError = abs(g-a);    % the estimated abs. error
maxIt = 20

while (absError > tol &&  loop < maxIt  )
    loop = loop + 1;    % increase loop counter by 1
    newa = 0.5*(a+g);   % replace a (need temporary variable)
    g = sqrt(a*g);      % replace g using the old value of a
    a = newa;           % replace a by the new a
    absError = abs(g-a);% estimate the absolute error

end
