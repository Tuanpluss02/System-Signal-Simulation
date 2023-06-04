% T?a ?? c?a v? tinh VINASAT
lat1 = 10.5;    % ?? v? B?c
lon1 = 105;     % ?? kinh ?ông

% T?a ?? c?a tr?m thu
lat2 = 20;      % ?? v? B?c
lon2 = 110;     % ?? kinh ?ông

% Chuy?n ??i sang ??n v? radian
lat1 = deg2rad(lat1);
lon1 = deg2rad(lon1);
lat2 = deg2rad(lat2);
lon2 = deg2rad(lon2);

% Bán kính Trái ??t
R = 6371;       % ??n v?: km

% Tính kho?ng cách gi?a hai ?i?m b?ng công th?c haversine
d = 2*R*asin(sqrt((sin((lat2-lat1)/2))^2 + cos(lat1)*cos(lat2)*(sin((lon2-lon1)/2))^2));

% Hi?n th? k?t qu?
disp(['Kho?ng cách gi?a v? tinh VINASAT và tr?m thu là: ' num2str(d) ' km']);
