% sig = randi([0,1], [1,1500]);
% Rb = 100e6;
% t = 0:1/Rb:(length(sig)-1)/Rb;
% nrz = zeros(size(sig));
% 
% for i = 1:length(sig)
%     if sig(i) == 1
%         nrz(i) = 1;
%     else
%         nrz(i) = -1;
%     end
% end
% 
% nrz = nrz.*sin(2*pi*Rb*t);
% plot(nrz);
T = 1/100e6;       
t = 0:1/(32*T):T; 
x = square(2*pi*t/T); 
plot(t,x) 
axis([0 20 -2 2])