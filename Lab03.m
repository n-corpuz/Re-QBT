%% Lab 3 Nicholas Corpuz 0488998
%% Problem 1



DATA

%% Problem 2

clc;

disp(['Copies of TurboTax bought by company 4;' , num2str(DATA(4,5))])

%% Problem 3

disp(['List of purchases for the first 2 companies:'])
disp(DATA([1 2],:));

%% Problem 4

disp(['List of purchases for the last 3 companies:'])
disp(DATA([end-2: end],:));

%% Problem 5

disp(['List of purchases for companies 1 and 4:'])
disp(DATA([ 1 4 ],:));

%% PROBLEM 6

disp(['Total number of copies of TurboTax sold:'])
disp([num2str(sum(DATA(1:end, 6)))])


%% Problem 7

disp(['Total number of Microsoft products sold:'])
disp(sum(DATA(1:end , 2)) + sum(DATA( 1:end , 7)))

%% Problem 8
clc;

c1 = sum((DATA(1: end, 2: end)),2)


%c2 = (sum(DATA(2, 2:end)));
%c3 = (sum(DATA(3, 2:end)));
%c4 = (sum(DATA(4, 2:end)));
%c5 = (sum(DATA(5, 2:end)));

disp(['Highest Purchasing Company:'])
disp([max(c1)])

%% 


