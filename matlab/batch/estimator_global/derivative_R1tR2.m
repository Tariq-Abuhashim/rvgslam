function dRRdaij = derivative_R1tR2(x1,x2)
%
% derivative were produced using:
%
% syms n(a1,b1,c1,a2,b2,c2) R1(ai,bi,ci) R2(a2,b2,c2)
% R1=w2R([a1;b1;c1]);
% R2=w2R([a2;b2;c2]);
% RR=R1'*R2;
% n=RR(:);
% diff(n, a1)
% diff(n, b1)
% diff(n, c1)
% diff(n, a2)
% diff(n, b2)
% diff(n, c2)
%
% By Tariq Abuhashim 22/03/2016
%

a1=x1(1);b1=x1(2);c1=x1(3);a2=x2(1);b2=x2(2);c2=x2(3);
n1 = norm(x1)+eps;
n2 = norm(x2)+eps;
sn1 = sin(n1);
cn1 = cos(n1);
sn2 = sin(n2);
cn2 = cos(n2);

drotda1 = [
    ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*a1*c1)/n1^2^(3/2) + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2) - (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((2*a1*(cn1 - 1))/n1^2 + (sn1*a1)/n1 - (2*a1*a1^2*(cn1 - 1))/n1^2^2 - (sn1*a1*a1^2)/n1^2^(3/2))
    ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((2*a1*b1^2*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(b1^2))/n1^2^(3/2)) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(a1^2))/n1^2 - (sn1*(a1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) + (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((sn1*a1*c1)/n1^2^(3/2) - (cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2)
    ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((sn1*(a1^2))/n1^2^(3/2) - (cn1*(a1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((2*a1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(c1^2))/n1^2^(3/2)) + (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2)
    ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((2*a1*(cn1 - 1))/n1^2 + (sn1*a1)/n1 - (2*a1*a1^2*(cn1 - 1))/n1^2^2 - (sn1*a1*a1^2)/n1^2^(3/2)) + ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2) + (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*a1*c1)/n1^2^(3/2) + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2)
    (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((2*a1*(b1^2)*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(b1^2))/n1^2^(3/2)) + ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(a1^2))/n1^2 - (sn1*(a1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((sn1*a1*c1)/n1^2^(3/2) - (cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2)
    ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((2*a1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(c1^2))/n1^2^(3/2)) + (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((sn1*(a1^2))/n1^2^(3/2) - (cn1*(a1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2)
    (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*a1*c1)/n1^2^(3/2) + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((2*a1*(cn1 - 1))/n1^2 + (sn1*a1)/n1 - (2*a1*a1^2*(cn1 - 1))/n1^2^2 - (sn1*a1*a1^2)/n1^2^(3/2))
    (cn2 - (c2^2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(a1^2))/n1^2 - (sn1*(a1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((2*a1*(b1^2)*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(b1^2))/n1^2^(3/2)) + ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((sn1*a1*c1)/n1^2^(3/2) - (cn1*a1*c1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*a1^2*b1)/n1^2^(3/2) + (2*a1^2*b1*(cn1 - 1))/n1^2^2)
    (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((2*a1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*a1)/n1 + (sn1*a1*(c1^2))/n1^2^(3/2)) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((sn1*(a1^2))/n1^2^(3/2) - (cn1*(a1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) + ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*a1^2*c1)/n1^2^(3/2) + (2*a1^2*c1*(cn1 - 1))/n1^2^2)
    ];
drotdb1 = [
    (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((2*b1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(a1^2))/n1^2^(3/2)) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((sn1*(b1^2))/n1^2^(3/2) - (cn1*(b1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) + ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*b1*c1)/n1^2^(3/2) + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2)
    (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((sn1*b1*c1)/n1^2^(3/2) - (cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((2*b1*(cn1 - 1))/n1^2 + (sn1*b1)/n1 - (2*b1*b1^2*(cn1 - 1))/n1^2^2 - (sn1*b1*b1^2)/n1^2^(3/2))
    (cn2 - (a2^2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(b1^2))/n1^2 - (sn1*(b1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((2*b1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(c1^2))/n1^2^(3/2)) + ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2)
    ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((sn1*(b1^2))/n1^2^(3/2) - (cn1*(b1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((2*b1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(a1^2))/n1^2^(3/2)) + (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*b1*c1)/n1^2^(3/2) + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2)
    ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((sn1*b1*c1)/n1^2^(3/2) - (cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2) - (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((2*b1*(cn1 - 1))/n1^2 + (sn1*b1)/n1 - (2*b1*b1^2*(cn1 - 1))/n1^2^2 - (sn1*b1*b1^2)/n1^2^(3/2))
    ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((2*b1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(c1^2))/n1^2^(3/2)) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(b1^2))/n1^2 - (sn1*(b1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) + (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2)
    ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((2*b1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(a1^2))/n1^2^(3/2)) + (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((sn1*(b1^2))/n1^2^(3/2) - (cn1*(b1^2))/n1^2 - sn1/n1 + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*b1*c1)/n1^2^(3/2) + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2)
    ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((2*b1*(cn1 - 1))/n1^2 + (sn1*b1)/n1 - (2*b1*b1^2*(cn1 - 1))/n1^2^2 - (sn1*b1*b1^2)/n1^2^(3/2)) + ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((sn1*b1*c1)/n1^2^(3/2) - (cn1*b1*c1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*b1*a1*b1)/n1^2^(3/2) + (2*b1*a1*b1*(cn1 - 1))/n1^2^2) + (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 - (sn1*b1*a1)/n1^2^(3/2) + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2)
    (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((2*b1*(c1^2)*(cn1 - 1))/n1^2^2 - (sn1*b1)/n1 + (sn1*b1*(c1^2))/n1^2^(3/2)) + ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(b1^2))/n1^2 - (sn1*(b1^2))/n1^2^(3/2) + (sn1*a1*b1*c1)/n1^2^(3/2) + (2*a1*b1*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((sn1*b1*a1)/n1^2^(3/2) - (cn1*b1*a1)/n1^2 - (c1*(cn1 - 1))/n1^2 + (sn1*b1^2*c1)/n1^2^(3/2) + (2*b1^2*c1*(cn1 - 1))/n1^2^2)
    ];
drotdc1 = [
    (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((2*c1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(a1^2))/n1^2^(3/2)) + ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(c1^2))/n1^2 - (sn1*(c1^2))/n1^2^(3/2) + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((sn1*c1*b1)/n1^2^(3/2) - (cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2)
    ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((2*c1*(b1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(b1^2))/n1^2^(3/2)) + (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((sn1*(c1^2))/n1^2^(3/2) - (cn1*(c1^2))/n1^2 - sn1/n1 + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) - ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*c1*a1)/n1^2^(3/2) + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2)
    ((b2*sn2)/n2 + (a2*c2*(cn2 - 1))/(n2^2))*((2*c1*(cn1 - 1))/n1^2 + (sn1*c1)/n1 - (2*c1*c1^2*(cn1 - 1))/n1^2^2 - (sn1*c1*c1^2)/n1^2^(3/2)) + ((c2*sn2)/n2 - (a2*b2*(cn2 - 1))/(n2^2))*((sn1*c1*a1)/n1^2^(3/2) - (cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2) + (cn2 - (a2^2*(cn2 - 1))/(n2^2))*((cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*c1*b1)/n1^2^(3/2) + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2)
    (cn2 - (b2^2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(c1^2))/n1^2 - (sn1*(c1^2))/n1^2^(3/2) + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((2*c1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(a1^2))/n1^2^(3/2)) + ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((sn1*c1*b1)/n1^2^(3/2) - (cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2)
    (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((2*c1*(b1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(b1^2))/n1^2^(3/2)) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((sn1*(c1^2))/n1^2^(3/2) - (cn1*(c1^2))/n1^2 - sn1/n1 + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) + ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*c1*a1)/n1^2^(3/2) + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2)
    (cn2 - (b2^2*(cn2 - 1))/(n2^2))*((sn1*c1*a1)/n1^2^(3/2) - (cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 - (b2*c2*(cn2 - 1))/(n2^2))*((2*c1*(cn1 - 1))/n1^2 + (sn1*c1)/n1 - (2*c1*c1^2*(cn1 - 1))/n1^2^2 - (sn1*c1*c1^2)/n1^2^(3/2)) - ((c2*sn2)/n2 + (a2*b2*(cn2 - 1))/(n2^2))*((cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*c1*b1)/n1^2^(3/2) + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2)
    ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((2*c1*(a1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(a1^2))/n1^2^(3/2)) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*(sn1/n1 + (cn1*(c1^2))/n1^2 - (sn1*(c1^2))/n1^2^(3/2) + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) + (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((sn1*c1*b1)/n1^2^(3/2) - (cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2)
    ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((sn1*(c1^2))/n1^2^(3/2) - (cn1*(c1^2))/n1^2 - sn1/n1 + (sn1*c1*a1*b1)/n1^2^(3/2) + (2*c1*a1*b1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((2*c1*(b1^2)*(cn1 - 1))/n1^2^2 - (sn1*c1)/n1 + (sn1*c1*(b1^2))/n1^2^(3/2)) + (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 - (sn1*c1*a1)/n1^2^(3/2) + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2)
    ((b2*sn2)/n2 - (a2*c2*(cn2 - 1))/(n2^2))*((cn1*c1*b1)/n1^2 - (a1*(cn1 - 1))/n1^2 - (sn1*c1*b1)/n1^2^(3/2) + (sn1*c1*a1*c1)/n1^2^(3/2) + (2*c1*a1*c1*(cn1 - 1))/n1^2^2) - ((a2*sn2)/n2 + (b2*c2*(cn2 - 1))/(n2^2))*((sn1*c1*a1)/n1^2^(3/2) - (cn1*c1*a1)/n1^2 - (b1*(cn1 - 1))/n1^2 + (sn1*c1*b1*c1)/n1^2^(3/2) + (2*c1*b1*c1*(cn1 - 1))/n1^2^2) - (cn2 - (c2^2*(cn2 - 1))/(n2^2))*((2*c1*(cn1 - 1))/n1^2 + (sn1*c1)/n1 - (2*c1*c1^2*(cn1 - 1))/n1^2^2 - (sn1*c1*c1^2)/n1^2^(3/2))
    ];
drotda2 = [
    ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (c2*sn2*a2)/(n2^2)^(3/2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) - (cn1 - (a1^2*(cn1 - 1))/n1^2)*((2*a2*(cn2 - 1))/(n2^2) + (sn2*a2)/n2 - (a2^2*sn2*a2)/(n2^2)^(3/2) - (2*a2^2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((b2*sn2*a2)/(n2^2)^(3/2) - (b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2)
    ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((b2*sn2*a2)/(n2^2)^(3/2) - (b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2) + (cn1 - (b1^2*(cn1 - 1))/n1^2)*((c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (c2*sn2*a2)/(n2^2)^(3/2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((2*a2*(cn2 - 1))/(n2^2) + (sn2*a2)/n2 - (a2^2*sn2*a2)/(n2^2)^(3/2) - (2*a2^2*a2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (c1^2*(cn1 - 1))/n1^2)*((b2*sn2*a2)/(n2^2)^(3/2) - (b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (c2*sn2*a2)/(n2^2)^(3/2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((2*a2*(cn2 - 1))/(n2^2) + (sn2*a2)/n2 - (a2^2*sn2*a2)/(n2^2)^(3/2) - (2*a2^2*a2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (a1^2*(cn1 - 1))/n1^2)*((c2*sn2*a2)/(n2^2)^(3/2) - (c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*(sn2/n2 + (a2*cn2*a2)/(n2^2) - (a2*sn2*a2)/(n2^2)^(3/2) + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((b2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*b2^2*a2*(cn2 - 1))/(n2^2)^2);
    (cn1 - (b1^2*(cn1 - 1))/n1^2)*((b2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*b2^2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((c2*sn2*a2)/(n2^2)^(3/2) - (c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*(sn2/n2 + (a2*cn2*a2)/(n2^2) - (a2*sn2*a2)/(n2^2)^(3/2) + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2);
    ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((c2*sn2*a2)/(n2^2)^(3/2) - (c2*cn2*a2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*a2)/(n2^2)^(3/2) + (2*a2*b2*a2*(cn2 - 1))/(n2^2)^2) + (cn1 - (c1^2*(cn1 - 1))/n1^2)*(sn2/n2 + (a2*cn2*a2)/(n2^2) - (a2*sn2*a2)/(n2^2)^(3/2) + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((b2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*b2^2*a2*(cn2 - 1))/(n2^2)^2);
    (cn1 - (a1^2*(cn1 - 1))/n1^2)*((b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (b2*sn2*a2)/(n2^2)^(3/2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((a2*sn2*a2)/(n2^2)^(3/2) - (a2*cn2*a2)/(n2^2) - sn2/n2 + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((c2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*c2^2*a2*(cn2 - 1))/(n2^2)^2);
    (cn1 - (b1^2*(cn1 - 1))/n1^2)*((a2*sn2*a2)/(n2^2)^(3/2) - (a2*cn2*a2)/(n2^2) - sn2/n2 + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (b2*sn2*a2)/(n2^2)^(3/2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((c2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*c2^2*a2*(cn2 - 1))/(n2^2)^2);
    (cn1 - (c1^2*(cn1 - 1))/n1^2)*((c2^2*sn2*a2)/(n2^2)^(3/2) - (sn2*a2)/n2 + (2*c2^2*a2*(cn2 - 1))/(n2^2)^2) + ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((b2*cn2*a2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (b2*sn2*a2)/(n2^2)^(3/2) + (a2*c2*sn2*a2)/(n2^2)^(3/2) + (2*a2*c2*a2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((a2*sn2*a2)/(n2^2)^(3/2) - (a2*cn2*a2)/(n2^2) - sn2/n2 + (b2*c2*sn2*a2)/(n2^2)^(3/2) + (2*b2*c2*a2*(cn2 - 1))/(n2^2)^2)
    ];
drotdb2 = [
    (cn1 - (a1^2*(cn1 - 1))/n1^2)*((a2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*a2^2*b2*(cn2 - 1))/(n2^2)^2) + ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (c2*sn2*b2)/(n2^2)^(3/2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((b2*sn2*b2)/(n2^2)^(3/2) - (b2*cn2*b2)/(n2^2) - sn2/n2 + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (b1^2*(cn1 - 1))/n1^2)*((c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (c2*sn2*b2)/(n2^2)^(3/2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((a2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*a2^2*b2*(cn2 - 1))/(n2^2)^2) + ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((b2*sn2*b2)/(n2^2)^(3/2) - (b2*cn2*b2)/(n2^2) - sn2/n2 + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((a2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*a2^2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (c2*sn2*b2)/(n2^2)^(3/2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) + (cn1 - (c1^2*(cn1 - 1))/n1^2)*((b2*sn2*b2)/(n2^2)^(3/2) - (b2*cn2*b2)/(n2^2) - sn2/n2 + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (a1^2*(cn1 - 1))/n1^2)*((c2*sn2*b2)/(n2^2)^(3/2) - (c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (a2*sn2*b2)/(n2^2)^(3/2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((2*b2*(cn2 - 1))/(n2^2) + (sn2*b2)/n2 - (b2^2*sn2*b2)/(n2^2)^(3/2) - (2*b2^2*b2*(cn2 - 1))/(n2^2)^2)
    ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (a2*sn2*b2)/(n2^2)^(3/2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((c2*sn2*b2)/(n2^2)^(3/2) - (c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) - (cn1 - (b1^2*(cn1 - 1))/n1^2)*((2*b2*(cn2 - 1))/(n2^2) + (sn2*b2)/n2 - (b2^2*sn2*b2)/(n2^2)^(3/2) - (2*b2^2*b2*(cn2 - 1))/(n2^2)^2)
    ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((c2*sn2*b2)/(n2^2)^(3/2) - (c2*cn2*b2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*b2*sn2*b2)/(n2^2)^(3/2) + (2*a2*b2^2*(cn2 - 1))/(n2^2)^2) + (cn1 - (c1^2*(cn1 - 1))/n1^2)*((a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) - (a2*sn2*b2)/(n2^2)^(3/2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) + ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((2*b2*(cn2 - 1))/(n2^2) + (sn2*b2)/n2 - (b2^2*sn2*b2)/(n2^2)^(3/2) - (2*b2^2*b2*(cn2 - 1))/(n2^2)^2)
    ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((a2*sn2*b2)/(n2^2)^(3/2) - (a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((c2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*c2^2*b2*(cn2 - 1))/(n2^2)^2) + (cn1 - (a1^2*(cn1 - 1))/n1^2)*(sn2/n2 + (b2*cn2*b2)/(n2^2) - (b2*sn2*b2)/(n2^2)^(3/2) + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((c2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*c2^2*b2*(cn2 - 1))/(n2^2)^2) + (cn1 - (b1^2*(cn1 - 1))/n1^2)*((a2*sn2*b2)/(n2^2)^(3/2) - (a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*(sn2/n2 + (b2*cn2*b2)/(n2^2) - (b2*sn2*b2)/(n2^2)^(3/2) + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (c1^2*(cn1 - 1))/n1^2)*((c2^2*sn2*b2)/(n2^2)^(3/2) - (sn2*b2)/n2 + (2*c2^2*b2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((a2*sn2*b2)/(n2^2)^(3/2) - (a2*cn2*b2)/(n2^2) - (c2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*b2)/(n2^2)^(3/2) + (2*b2*c2*b2*(cn2 - 1))/(n2^2)^2) + ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*(sn2/n2 + (b2*cn2*b2)/(n2^2) - (b2*sn2*b2)/(n2^2)^(3/2) + (a2*c2*sn2*b2)/(n2^2)^(3/2) + (2*a2*c2*b2*(cn2 - 1))/(n2^2)^2)
    ];
drotdc2 = [
    (cn1 - (a1^2*(cn1 - 1))/n1^2)*((a2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*a2^2*c2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((b2*sn2*c2)/(n2^2)^(3/2) - (b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) + ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*(sn2/n2 + (c2*cn2*c2)/(n2^2) - (c2*sn2*c2)/(n2^2)^(3/2) + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((b2*sn2*c2)/(n2^2)^(3/2) - (b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((a2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*a2^2*c2*(cn2 - 1))/(n2^2)^2) + (cn1 - (b1^2*(cn1 - 1))/n1^2)*(sn2/n2 + (c2*cn2*c2)/(n2^2) - (c2*sn2*c2)/(n2^2)^(3/2) + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((a2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*a2^2*c2*(cn2 - 1))/(n2^2)^2) + (cn1 - (c1^2*(cn1 - 1))/n1^2)*((b2*sn2*c2)/(n2^2)^(3/2) - (b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*(sn2/n2 + (c2*cn2*c2)/(n2^2) - (c2*sn2*c2)/(n2^2)^(3/2) + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((b2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*b2^2*c2*(cn2 - 1))/(n2^2)^2) - ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (a2*sn2*c2)/(n2^2)^(3/2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2) + (cn1 - (a1^2*(cn1 - 1))/n1^2)*((c2*sn2*c2)/(n2^2)^(3/2) - (c2*cn2*c2)/(n2^2) - sn2/n2 + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (b1^2*(cn1 - 1))/n1^2)*((b2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*b2^2*c2*(cn2 - 1))/(n2^2)^2) + ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (a2*sn2*c2)/(n2^2)^(3/2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((c2*sn2*c2)/(n2^2)^(3/2) - (c2*cn2*c2)/(n2^2) - sn2/n2 + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (c1^2*(cn1 - 1))/n1^2)*((a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) - (a2*sn2*c2)/(n2^2)^(3/2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((b2^2*sn2*c2)/(n2^2)^(3/2) - (sn2*c2)/n2 + (2*b2^2*c2*(cn2 - 1))/(n2^2)^2) + ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((c2*sn2*c2)/(n2^2)^(3/2) - (c2*cn2*c2)/(n2^2) - sn2/n2 + (a2*b2*sn2*c2)/(n2^2)^(3/2) + (2*a2*b2*c2*(cn2 - 1))/(n2^2)^2)
    ((sn1*c1)/n1 - (a1*b1*(cn1 - 1))/n1^2)*((a2*sn2*c2)/(n2^2)^(3/2) - (a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2) + (cn1 - (a1^2*(cn1 - 1))/n1^2)*((b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (b2*sn2*c2)/(n2^2)^(3/2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) + ((sn1*b1)/n1 + (a1*c1*(cn1 - 1))/n1^2)*((2*c2*(cn2 - 1))/(n2^2) + (sn2*c2)/n2 - (c2^2*sn2*c2)/(n2^2)^(3/2) - (2*c2^2*c2*(cn2 - 1))/(n2^2)^2)
    (cn1 - (b1^2*(cn1 - 1))/n1^2)*((a2*sn2*c2)/(n2^2)^(3/2) - (a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*c1)/n1 + (a1*b1*(cn1 - 1))/n1^2)*((b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (b2*sn2*c2)/(n2^2)^(3/2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 - (b1*c1*(cn1 - 1))/n1^2)*((2*c2*(cn2 - 1))/(n2^2) + (sn2*c2)/n2 - (c2^2*sn2*c2)/(n2^2)^(3/2) - (2*c2^2*c2*(cn2 - 1))/(n2^2)^2)
    ((sn1*b1)/n1 - (a1*c1*(cn1 - 1))/n1^2)*((b2*cn2*c2)/(n2^2) - (a2*(cn2 - 1))/(n2^2) - (b2*sn2*c2)/(n2^2)^(3/2) + (a2*c2*sn2*c2)/(n2^2)^(3/2) + (2*a2*c2^2*(cn2 - 1))/(n2^2)^2) - (cn1 - (c1^2*(cn1 - 1))/n1^2)*((2*c2*(cn2 - 1))/(n2^2) + (sn2*c2)/n2 - (c2^2*sn2*c2)/(n2^2)^(3/2) - (2*c2^2*c2*(cn2 - 1))/(n2^2)^2) - ((sn1*a1)/n1 + (b1*c1*(cn1 - 1))/n1^2)*((a2*sn2*c2)/(n2^2)^(3/2) - (a2*cn2*c2)/(n2^2) - (b2*(cn2 - 1))/(n2^2) + (b2*c2*sn2*c2)/(n2^2)^(3/2) + (2*b2*c2^2*(cn2 - 1))/(n2^2)^2)
    ];
dRRdaij = [drotda1 drotdb1 drotdc1 drotda2 drotdb2 drotdc2];