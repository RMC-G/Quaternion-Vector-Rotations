function [q0,q1,q2,q3] = EulerAngles2q(R,P,Y)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
q0 = sin(R/2)*sin(P/2)*sin(Y/2) + cos(R/2)*cos(P/2)*cos(Y/2);
q1 = -cos(R/2)*sin(P/2)*sin(Y/2) + sin(R/2)*cos(P/2)*cos(Y/2);
q2 = sin(R/2)*cos(P/2)*sin(Y/2) + cos(R/2)*sin(P/2)*cos(Y/2);
q3 = cos(R/2)*cos(P/2)*sin(Y/2) - sin(R/2)*sin(P/2)*cos(Y/2);
end

