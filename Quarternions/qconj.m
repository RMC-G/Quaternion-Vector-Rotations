function [qconj] = qconj(q)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
q0 = q(1,1);
q1 = q(1,2);
q2 = q(1,3);
q3 = q(1,4);

qconj = [q0 -q1 -q2 -q3];

end

