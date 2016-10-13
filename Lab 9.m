% Lab 9
%% Problem 1
clc; clear;
i = 1
x = 2; step = .001
while  x < 3-step
    x= x + step
   vec(i) = x
   i = i+1
end

%% Problem 2
clc; clear;
i = 1
x = 2; step = .001
while  x < 3-step
    x= x + step
   
end



%% Problem 3
clc; clear;
tol = 10^-10
startLength = 1
n = 1
while startLength >= tol
    startLength = startLength / 2
    Vec(n) = startLength
    n = n+1
   
end
length(Vec)

%% Problem 4
clc; clear all;
a= -2
b=3
attempts = 1
Value = input('Enter a value of x ')


while Value <= a | Value >= b
    disp('value not withing the nessesary paramaters')
    attempts = attempts + 1 
    Value = input('Enter a value of x')
end
disp(['number of attempts: ' num2str(Value)])

%% Problem 5
i = 1
tol = 1*10^-9
a = (a +g)/2
g = sqrt(a*g)
while abs( a -b) <= tol
    i = i +1
    

%% Problem 6
number = floor(1+ last - first) .*rand(1,1)
attempts = 0

x = input('input a guess')
while (x ~=)
disp(?You have guessed incorectly?);
attempts = attempts +1 
if

end
% Below the loop, you know x must lie in the interval.
disp([?The value you entered (? num2str(x) ?) must be valid.?]);

