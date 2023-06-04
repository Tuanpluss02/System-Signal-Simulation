% T?a ?? c?a v? tinh VINASAT
lat1 = 10.5;    % ?? v? B?c
lon1 = 105;     % ?? kinh ?�ng

% T?a ?? c?a tr?m thu
lat2 = 20;      % ?? v? B?c
lon2 = 110;     % ?? kinh ?�ng

% Chuy?n ??i sang ??n v? radian
lat1 = deg2rad(lat1);
lon1 = deg2rad(lon1);
lat2 = deg2rad(lat2);
lon2 = deg2rad(lon2);

% B�n k�nh Tr�i ??t
R = 6371;       % ??n v?: km

% T�nh kho?ng c�ch gi?a hai ?i?m b?ng c�ng th?c haversine
d = 2*R*asin(sqrt((sin((lat2-lat1)/2))^2 + cos(lat1)*cos(lat2)*(sin((lon2-lon1)/2))^2));

% Hi?n th? k?t qu?
disp(['Kho?ng c�ch gi?a v? tinh VINASAT v� tr?m thu l�: ' num2str(d) ' km']);
