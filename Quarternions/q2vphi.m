function [theta,nv] = q2vphi(q0,q1,q2,q3)
%
q = sqrt(q1^2 + q2^2 + q3^2);
nv = [q1, q2, q3]/q;
theta = 2*acos(q0);

end

