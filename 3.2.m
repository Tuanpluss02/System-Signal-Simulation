num=input('nhap cac he so o tu =');
den=input('nhap cac he so o mau so=');
[z,p,k]=tf2zp(num,den);grid;
m=abs(p);
disp('cac diem cuc tai');disp(z);
disp(' cac diem khong tai');disp(p);
disp(' he so tang ic'); disp(k);
disp('ban kinh diem cuc'); disp(m);
sos=zp2sos(z,p,k);
disp(' cac thanh phan bac 2:'); disp(real(sos));
zplane(num,den);