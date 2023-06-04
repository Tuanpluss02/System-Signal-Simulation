w = 0.01:0.01:5;
H1 = 1./(1j*w);
H2 = 1./(1+1j*w);

figure(1);
subplot(211)
plot(w,real(H1));
subplot(212);
plot(w,real(H2));

figure(2);
subplot(211)
semilogx(w,real(H1));
subplot(212);
semilogx(w,real(H2));


figure(3);
subplot(211)
semilogy(w,real(H1));
subplot(212);
semilogy(w,real(H2));

figure(4);
subplot(211)
loglog(w,real(H1));
subplot(212);
loglog(w,real(H2));
