%This script segments the data into epochs 


%Dataset : https://physionet.org/content/eegmmidb/1.0.0/
a = 1;
while a < 8
t1 = "S00"+a+"R2.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 61;
while n < 161
    v1(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+61;
    y = y+61;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
while a < 8
t1 = "S00"+a+"R6.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v2(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 1;
while a < 8
t1 = "S00"+a+"R4.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v3(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

%Dataset: http://bnci-horizon-2020.eu/database/data-sets
load('Dataset2.mat');

a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = A01F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v6(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = A02F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v6(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 3;
while a < 4
b = 1;
while b < 4
signal(b).d = A03F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v6(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end


a = 4;
while a < 5
b = 1;
while b < 4
signal(b).d = A04F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v6(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end


%Dataset: http://gigadb.org/dataset/100295
load('Dataset3.mat');

a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = B01F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v8(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = B02F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v8(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 3;
while a < 4
b = 1;
while b < 4
signal(b).d = B03F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v8(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end


a = 4;
while a < 5
b = 1;
while b < 4
signal(b).d = B04F(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v8(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

%Dataset: https://figshare.com/collections/A_large_electroencephalographic_motor_imagery_dataset_for_electroencephalographic_brain_computer_interfaces/3917698
load('Dataset4.mat');

a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = C01LRH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v9(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = C02LRH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v9(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 3;
while a < 4
b = 1;
while b < 4
signal(b).d = C03LRH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v9(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end


a = 4;
while a < 5
b = 1;
while b < 4
signal(b).d = C04LRH(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v9(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

%Dataset: https://figshare.com/collections/A_large_electroencephalographic_motor_imagery_dataset_for_electroencephalographic_brain_computer_interfaces/3917698
load('Dataset5.mat');

a = 1;
while a < 2
b = 1;
while b < 4
signal(b).d = D01T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v10(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 2;
while a < 3
b = 1;
while b < 4
signal(b).d = D02T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v10(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end

a = 3;
while a < 4
b = 1;
while b < 4
signal(b).d = D03T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v10(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end


a = 4;
while a < 5
b = 1;
while b < 4
signal(b).d = D04T(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v10(a).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end
a = a+2;
end