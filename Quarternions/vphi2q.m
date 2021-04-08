function [q] = vphi2q(theta, n)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
q0 = cos(theta/2);
n = n/norm(n);
q123 = sin(theta/2)*n;
q = [q0 q123];
end

