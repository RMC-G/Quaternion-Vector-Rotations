function [r] = qmult(p,q)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
p1 = p(1,1);
p2 = p(1,2);
p3 = p(1,3);
p4 = p(1,4);

q1 = q(1,1);
q2 = q(1,2);
q3 = q(1,3);
q4 = q(1,4);

r1 = (p1*q1 - p2*q2 - p3*q3 - p4*q4);

r2 = (p1*q2 + p2*q1 + p3*q4 - p4*q3);

r3 = (p1*q3 - p2*q4 + p3*q1 + p4*q2);

r4 = (p1*q4 + p2*q3 - p3*q2 + p4*q1);

r = [r1 r2 r3 r4];
end

