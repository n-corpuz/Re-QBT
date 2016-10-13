%% Homework 6 Nicholas Corpuz, Poly Id 0488998
%% Problem 1
clc; clear;
%ChoiceA = [48; 0 ;0];
%ChoiceB = [54; 0; 0];

%ChoiceA = [48; 1 ;90];
%ChoiceB = [54; 0; 0];

%ChoiceA = [62; 1 ;200];
%ChoiceB = [54; 2; 180];

%ChoiceA = [48; 2 ;200];
%ChoiceB = [54; 2; 190];

ChoiceA = [62; 2; 200];
ChoiceB = [54; 2; 200];


display(['travel time; tickets; fine'])



if ChoiceA(2) == 0 && ChoiceB(2) == 0 && ChoiceA(1) > ChoiceB(1)
aIsBetter = 0
elseif  ChoiceA(2) == 0 && ChoiceB(2) == 0 && ChoiceA(1) < ChoiceB(1)
     aIsBetter = 1
     
%If neither yeilds a ticket determines which is faster and chooses it
elseif ChoiceA(2) > 0 & ChoiceB(2) == 0
    aIsBetter = 0
elseif ChoiceB(2) > 0 & ChoiceA(2) == 0 
    aIsBetter = 1
elseif ChoiceA(2) > ChoiceB(2)
    aIsBetter = 0
elseif ChoiceB(2) > ChoiceA(2)
    aIsBetter = 1
    
%If either yeilds a ticket checks if the other has no tickets,if it does it
%chooses it

elseif ChoiceA(2) >= 1 && ChoiceB(2) >= 1 && ChoiceA(2) > ChoiceB(2)
    aIsBetter = 0
elseif ChoiceA(2) >= 1 && ChoiceB(2) >= 1 && ChoiceA(2) < ChoiceB(2)
    aIsBetter = 1
    
% If both choices yield tickets, picks the one that yields less violations
elseif ChoiceA(2) == ChoiceB(2) && ChoiceA(3) < ChoiceB(3)
    aIsBetter = 1
elseif ChoiceA(2) == ChoiceB(2) && ChoiceA(3) > ChoiceB(3)
    aIsBetter = 0
    
% If both choices yeild the same number of tickets/violations, determines which has
% less fines and picks it

elseif ChoiceA(2) == ChoiceB(2) && ChoiceA(3) == ChoiceB(3) && ChoiceA(1) < ChoiceB(1)
    aIsBetter = 1
elseif ChoiceA(2) == ChoiceB(2) && ChoiceA(3) == ChoiceB(3) && ChoiceA(1) > ChoiceB(1)
    aIsBetter = 0
    
% If both fines and tickets of each case are identical chooses the choice
% that has the faster travel time

end



    

     

    
        