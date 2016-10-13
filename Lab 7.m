%% Lab 7



%% Problem 1

n = input('enter a number ');

if (n <= 0)
    disp('Youve enterd a negative number')
else 
    disp(['you enterd the number: ' num2str(n)])
end
    %% Problem 2
    clc; clear;
n = input('enter a number any number ')

if (n >=0)
    
    disp(['Youve entered a positive number', num2str(n)])
   
else
    
    
    disp(['Youve entered a negative number', num2str(n)])
  
end
    
    %% Problem 3
    
    a = .1;
    b = .7;
    c = 1.1;
    x = input('what is the value of x ')
   
 if (x<=a)
      y = 0 
 elseif (a< x) & (x <= b)
        
        y = ((x-1)^2)/((b-a)*(c-a))
        
elseif (b < x) & (x <= c)
        
        y = 1 - ((x-1)^2)/((b-a)*(c-a))
      
 elseif (x > c)
        
        y =1
 end
 
 %% Problem 4
 clc; clear;c
 
 x  = input('values of x ');
 y = input('values of y ');
 
 
 if (x>= 0) & (y>= 0 )
     g = x + y +1 
 elseif (x>= 0) & (y< 0)
     g = x + y^2 + 4
     
 elseif (x< 0) & (y >= 0)
     g = x^2 + y+2
  
 elseif (x< 0) & (y< 0)
     
     g = x^2 + y^2 +3
     
 end
 
 
 %% Problem 5
 
 a = input('value of side a')
 b = input('value of side b')
 c = input('value of side c')
 
 d = 'equilateral';
 e = 'isoceles';
 f = 'scalene'; 
 
 if (a==b)&(b==c)
     disp(d)
 elseif ((a ==b) & (a ~=c)) | ((b == c) & (c~=a)) | (c== a) & (b~=c)
     disp(e)
 elseif (a~=b) & (b~=c) & (c~=a)
     disp(f)
 end
 
 
 
 
 
 
 