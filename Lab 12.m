%% Lab 12 Nicholas Corpuz 0488998

%% Task 1

char(32:128)
% The last character is the tilda ~ better known as the squigly line
%% Task 2

uppercase = char(65:90)
uppercasereverse = char(90:-1:65)

%% Task 3

lowercase = char(97:122)
 
%% Task 4 

char(48:2:57)

numbers0_9 = char(48:57)

%% Task 5

double(lowercase)

%% Task 6

double(uppercase)

%% Task 7 

double(numbers0_9)

%% Task 8 
clc; clear all 
%input('Enter a string: ')

STR = ('Albert Einstein''s IQ was 187')
newSTR = STR
IDXuppers = find( STR >= 'A' & STR <= 'Z')
IDXlowers = find( STR >= 'a' & STR <= 'z')


nUppers = nnz(IDXuppers)
nLowers = nnz(IDXlowers)



STR(newSTR) = char(STR(IDXlowers) -'a'+ 'A')

STR(newSTR) = char(STR(IDXuppers) -'A' + 'a')

disp(newSTR)

%% Precursor to Task 9

a = double('a')
ba = (double('z') - a)

function[a] = randgen


rand = a + ba *rand(1,5)


%% Task 9
clc; clear;
a = double('a')
ba = double('z') - a
sequence = round(rand(1,5)* 122 + 97)

letters = char(sequence)

nomatch = false
repeat = false
tic
while repeat = true
while nomatch = false
    string = input('Enter the string as fast as you can: ')
    
    allstrings = [string; newstring]
    
  
    newstring = string
    
    
    
    
    
    
end
playAgain = input('Enter ''y'' or ''Y'' to repeat game(anything else to quit', 's')


if playAgain == ('y' | 'Y')
    repeat = true
else
    repeat = false
end 

end
 
toc


