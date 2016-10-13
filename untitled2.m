R = .082054
a = 3.592
b = .04257

V = linspace(.987, 1.931, 7)
T = (250:10:360)'

sv = size(V,2)
st = size(T,1)

vv = repmat(V, st , 1)

tt = repmat(T , 1, sv)

P = ((R .* tt)./(vv-b)) - ((a)./(vv.^2))

display([num2str(transpose(V)) , num2str(P)])




%% 


vec = [25 -24 -26 26 0 4 -22 -23 9 -21]
 

vec1 = find(vec>=0)
vec2 = vec(vec1)
vec3 = sqrt(vec2)


vec2 = sqrt(vec1(vec))


%%

A = [1 2 3 2 1]

B = transpose(A)
vt = size(A ,2)
vc = size(B ,1)


a= repmat(A, vc , 1)

b = repmat(B , 1, vt)

sum(sum(a,1))
sum(sum(a,2))
sum(sum(b,1))
sum(sum(b,2))


%%
format short
p = 1000

r = transpose((5:5:30)) %intrest
n =(.04 : .01: .12) %payments

rr = size(r,1);
nn = size(n,2);

R = repmat(r, 1,nn)
N = repmat(n , rr,1)


a = (p.*((R.*(1+R).^N)) ./ ((1+R).^(N -1)))

disp(a)


%%


















