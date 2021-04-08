n = [0 0 1];
theta = 30;

% original vector
v = [ 1 2 3];
%theta

theta = theta*pi/180;
%axis of rotation
n = [ 0 0 1];

%identity matrix
component1 = [ 1 0 0;0 1 0;0 0 1]

%component 1
component1v = v*component1

%component 2
n1 = n(1,1);
n2 = n(1,2);
n3 = n(1,3);
nb = sqrt(n1^2 + n2^2 + n3^2);
nv = n/nb;
q = sin(theta/2)*nv;

sq = SkewSymm(q);
component2 = 2*(sq^2)
component2v = v*component2

%component 3
q0 = cos(theta/2);
component3 = 2*q0*sq
component3v = v*component3


% v'=I3x3+(1-cos(theta) 

Rbn = (component1 + component2 + component3)
vt = v.';

Rbnv = Rbn*vt