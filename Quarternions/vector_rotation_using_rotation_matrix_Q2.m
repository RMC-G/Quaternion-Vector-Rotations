n = [0 0 1];
theta = 30;
% original vector
v = [ 1 2 3];

%theta

theta = theta*pi/180;

%axis of rotation



%identity matrix
I = [ 1 0 0;0 1 0;0 0 1];

%component one
q = vphi2q(theta, n);
q0 = q(1,1);
q1 = q(1,2);
q2 = q(1,3);
q3 = q(1,4);
qv = [q1 q2 q3];
qb = sqrt(q1^2 + q2^2 + q3^2);

component1 = (((q0.^2) - (qb.^2))*I) 
component1v =  v*component1

%component 2
qt = transpose(qv);
component2= 2*(qt*qv)
component2v = v*component2

%component 3
n1 = n(1,1);
n2 = n(1,2);
n3 = n(1,3);
nb = sqrt(n1^2 + n2^2 + n3^2);
nv = n/nb;
qtwo = sin(theta/2)*nv;
sq = SkewSymm(qv);
component3 = 2*q0*sq
component3v = v*component3

%final
Rbn = (component1 + component2 + component3)
vt = v.';

Rbnv = Rbn*vt

