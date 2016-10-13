%% Nicholas Corpuz, Lab 3, 0488998


%% Problem 1
clear all

isDumb = false 

aDouble = 0

% the values are displayed with different classes

%% Problem 2
clear all 
x =2;
y = -2;
z = -2;
 a= (x == y)
 b= (z > y)
 c= (z >= y)
 d= (y ~= y)
 e= (-x <= y)
 f= ~(x < -z)
 g= (x < z < -y)
 
 %% Problem 3
 clear all 
 
 RandStream.setDefaultStream(RandStream.create('mt19937ar','seed',5489));
 ARR1 = rand(6,4)
 ARR2 = rand(6,4)
 
 Greater12 = (ARR1 > ARR2)
 LESSTHANHALF1 = (ARR1 < .5)
 ARRC = (ARR1 <= ARR2)
 %% TASK 4
 clear all 
 x=2; y=-2; z=-2;
 
 b1 = ((-2 * x +1) > (y +z)) & ((x+y) ==0) %true
 b2 = ((y+z) ~= -2 *x) | (z^y == (y-x)) % false
 b3 = ~((-2 * x + 1) > (y+2)) & ((x+y) ==0) % true
 %% Task 5
 clear all 
 
 RandStream.setDefaultStream(RandStream.create('mt19937ar','seed', 5489));
 
 ARR1 = rand(5,4)
 ARR2 = rand(5,4)
 
 RARR1 = round(9*ARR1) , RARR2 = round(9*ARR2)
 
 MTX1= ~(RARR1 >= RARR2)
 MTX2= (.03 * RARR1 > RARR2) | (RARR2 > RARR1)
 MTX3= (2* RARR1 > RARR2) & (RARR2 >RARR1)
RARR1 = (3 < RARR1) & (RARR1< 7) 

%% Task 6
clear all 
RandStream.setDefaultStream(RandStream.create('mt19937ar', 'seed', 5489));

Arr3 = rand(1,7)
Arr4 = rand(1,7)
 
LogicVector = (Arr3 > Arr4)
Arr4(LogicVector) = 1

%% Task 7
clear all 
RandStream.setDefaultStream(RandStream.create('mt19937ar', 'seed', 7));

ARR1 = rand(6,4)
ARR2 = rand(6,4)

Finder = find(ARR1> ARR2)
ARR1(Finder) = 1

LOGARR12 = (2*ARR1 > ARR2)
numberofconditions = nnz(LOGARR12)

%% Task 8

clear all 

Floats = [7.2, -1.4, 3, 0, -2.9] 

Vec = ~Floats
whos
%using the logical operator creats a logical function 

%% Task 9
clear all 

ARR1 = rand(1,1000000);

Vec1 = ARR1.*(1./ARR1);
Vec2 = Vec1 -1;
nnz(Vec2)

%% Problem 10
clear all 
format long

Stick = rand(1,1000000);

mean(1- Stick >.5) 
























































 
 
 
 
 
 
 