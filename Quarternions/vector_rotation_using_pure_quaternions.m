
n =  [ 0 0 1];
theta = 30;
theta = theta*pi/180;
%original vector
v = [1 2 3];

%Step 1 : pure quarternion
v1 = v(1,1);
v2 = v(1,2);
v3 = v(1,3);
step1 = [0 v1 v2 v3]

%Step 2 : Unit rotation quarternion

step2 = vphi2q(theta, n)
%Step 3 : p' = q*(0,v)

step3 = qmult(step2,step1)

%Step 4 : (0,v') = p'q*
% 
qconj = qconj(step2);
tmp = qmult(step3,qconj);
tmp1 = tmp(1,2);
tmp2 = tmp(1,3);
tmp3 = tmp(1,4);
step4 = [0 tmp1 tmp2 tmp3]

%Step 5 : rotated vector

step5 = step4(2:4)

