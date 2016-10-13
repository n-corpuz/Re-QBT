n = 40
Dtheta = 2* pi / 4 -.02

Dr = .36

ThetaK = ((1:n) -1) * Dtheta

Rk = 1 +((1:n) -1) * Dr

x = Rk .* cos(ThetaK)

y = Rk .* sin(ThetaK)

X = cumsum(x)

Y = cumsum(y)

plot(X , Y)


%%

PTS = [ 4 10 ; 2 2 ; 5 1 ; 11 3; 9 7]
s = size(PTS,1)
 
t = PTS(1,:)
PTS(1,:) = []

PTS2 = [PTS ;t]

DistanceFormula = sqrt((PTS2(:,1) - PTS(: ,1)).^2 + (PTS2(:,2) - (PTS(:,2))).^2)




%%
PTS = [ 4 10 ; 2 2 ; 5 1 ; 11 3; 9 7]

%PTS  = [ -3 0 ; 3 4 ; 5 1; -1 -3]
s = size(PTS,1)

PTS2 = [PTS(2:s, 1:end); PTS(1, 1:end)]

DistanceFormula = sqrt((PTS2(:,1) - PTS(: ,1)).^2 + (PTS2(:,2) - (PTS(:,2))).^2)

f = sum(DistanceFormula)

display(['Perimeter of this ', num2str(s), '-sided polygon is: ', num2str(f)])

disp([num2str(f), 'flka'])

%%

n = 100
a= 3
m = 6
X = linspace(0,a, n);
Vec = X.*(a -X).^(1/5) +5;

newX = repmat(X,1,m)

newVec = 
size(newX)
size(Vec)
size(newVec)



plot(newX , newVec)


%%
n = 100 
a = 3
m = 6
transpose(1:m)


X = linspace(0, a, n);


XX = repmat(X,1,m)


XXX = repmat((1:m, 1, n*m))


XXX.*XX
Y = X.*(a-X).^(1/5) +5;

YY = repmat(Y,1,m);

%% Problem 2 
clc; clear;

m = input('what is the value of m?')
a = 3
n = 100
m = 6

X = linspace(0, a, n)
Period = X.* (a - X ).^(1/5) + 5

Period1 = repmat(Period,1, m);

X2 = linspace(0, m*a ,n*m)

plot(X2, Period1)


xlabel('x', 'FontSize', 14);
ylabel('y', 'FontSize', 14);
title('A Periodic Function', 'FontSize', 14)
































































