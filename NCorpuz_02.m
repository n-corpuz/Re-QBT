%% Nicholas Corpuz poly ID 0488998
%

%% Problem 1
format short e; clc; clear;
Cos = cos(3);
Sin = sin(3);
VarM = (-1:-1:-15);
V = (-10.^VarM);
V = transpose(V);

D1 = (sin (3 + V) - sin(3))./ V;
rE1 = abs( (D1 - Cos) ./ (Cos));




D2 = (2./V).*(sin(V./2).*cos(3+(V./2)));
rE2 = abs( (D2 - Cos) ./ (Cos))

D3 =  imag(sin(3 + (1i.*V))./V);
rE3 = abs ((D3 -Cos)./(Cos));

RELATIVEERRORS = [V rE1 rE2 rE3];

disp ('Step Size Rell. E. 1 Rell. E. 2 Rell. E. 3 Rell. E. 4')
disp (RELATIVEERRORS)



%% Problem 2


