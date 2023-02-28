function [alphadot] = pendde(t,alpha)
l = 10
g = 9.81
alphadot = [0;0];
alphadot(1) = alpha(2);
alphadot(2) = -(g/l)*sin(alpha(1));
end