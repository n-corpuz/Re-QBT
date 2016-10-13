% Homework 7
%% Problem 1
format short

dimensions = input(' input number of dimmensions ')
nPts = 100000

f = .01
a = -1
b = 1
counter = 0;

for i = 1:nPts
    Points = a + (b-a) * rand(1, dimensions);
    
    
    Logic = (Points > (b-f))| (Points < (a+ f));
    beastly = (sum(Logic, 2) > 0);
    numbersontheedge = any(beastly);
    
    counter = counter + numbersontheedge;
end

FractionOnEdge = counter/nPts


    

%% Problem 2
format bank
%clc; clear all;
%load DATA


Savings = input('input Principle ammount of savings')


nYears = input('number of years untill death')

rand('twister', 5489)
meanRate = .04
sigMa = .06
GainRate = meanRate + sigMa *randn(nYears, 1)

agePerson = 62

Age = DATA(agePerson+1:end ,1)
lifeExpectancy = DATA(agePerson+1:end, 2)

for i = 1:nYears
    Withdraw = Savings /lifeExpectancy(i)
    
    Vector(i,:) = [Age(i) Savings GainRate(i) Withdraw] 
    Savings = (Savings - Withdraw)*(GainRate(i) + 1)
end

disp('Clients Age     Balance     Gain Rate     Amt. Withdrawal')
disp('=========================================================')
disp(Vector)

