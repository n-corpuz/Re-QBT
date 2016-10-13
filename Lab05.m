%%Nicholas Corpuz Lab 05 03.01.2013

%% Problem 1
RandStream.setDefaultStream(RandStream('mt19937ar','seed', 5489)); 
Rd3 = rand(1,3)
Rd2 = rand(2,1)
Rd7 = rand(1,7)

%once the seed is reset the same seemingly 'random' values are repeated.
%This is because each time the seeds are reset you enter into an algotithim
%that repeats the same precalculated values back and again

%% Problem 2
disp(Rd7)


stream = RandStream.getDefaultStream
RD = rand(3,4)

%% 3
clc; clear;
format long
nPts = rand(10000000,1);
Average = mean(nPts);
disp(Average)

RelativeError = (abs(Average - .5))./(.5)
%the relative error is .003 compared to the average which is .5018. This
%value osscilates however it is never more than 1 above
% The larger the saple size is made the smaller the relative error becomes

%% 4
m  =25
a = 0
b = 6
Rand = rand(m,1)*6;

vecc = ceil(a + (b-a) .* rand (1, m))

%% 5

RandomVecc = ceil(a + (b-a) .* rand( 44, 4))

%% 6
clc; clear;

m = 2000
a =0
b = 6

Dice_Throw = ceil(a + (b-a) .* rand(m,3));

sum(Dice_Throw, 2);

prob= sum(Dice_Throw, 2) == 10;

ss = sum(prob) / (m); 

Boxcars = sum(Dice_Throw , 2) == 18;

sum(Boxcars) / m 

%% 7 
n = 100
rand(2,n)



DISTNACES = sqrt((0) -POINTS(:,1)).^2 + (0) - POINTS(:,2).^2))
mean(DISTANCES)



%% 8
clc; clear; format long

m = 1000000
a=0
b=6
g = (780/7776)
h = 1182/7777
Dice_throw = ceil(a + (b-a) .* rand(m,5));


prob = sum(Dice_throw,2) == 17;

ss = sum(prob)/ m

RelativeError = abs(ss -g)/(g);

prob2 = sum(Dice_throw,2) <= 13;

ss2 = sum(prob2) / m;
RelativeError2 = abs(ss2 - h)/m

%%
xmin = 0
wavelength = 3
xpts = 100

%ncells = input('number of cells')
ncells = 4
xcell = linspace(ncells, wavelength, xpts)
ycell = xcell.*(wavelength  - xcell).^(.02) + 5

shifts = wavelength repmat((0:ncells -1), xpts-1)

xshifts = zeros(1, xpts.*ncells)
nshifts = shifts
xplot = repmat(xcell, 1, ncells) 
yplot = repmat(ycell, 1, ncells)



































