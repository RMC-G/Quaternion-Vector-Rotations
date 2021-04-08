function [Sv] = SkewSymm(v)

%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
v1 = v(1,1);
v2 = v(1,2);
v3 = v(1,3);

Sv = [0 -v3 v2; v3 0 -v1;-v2 v1 0];

end
