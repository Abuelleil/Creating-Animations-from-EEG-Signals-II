%This script segments testing data into epochs and calculate discrete wavelet energy for each epoch 
load('Dataset5Test.mat');
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

a = 1;
h=1;
sa(1).d = v10(1).e(1);  %Dataset5.1 , Tongue, C3 Channel
sa(2).d = v10(1).e(3);  %Dataset5.1 , Tongue, C4 Channel
sa(3).d = v10(1).e(2);  %Dataset5.1 , Tongue, CZ Channel
fs = 160; % Sampling frequency
waveletFunction = 'db4';
f = 1;
b = 1;
while a < 4
sb = sa(a).d;

while b < 161
s = sb.eeg(b).d;
N=length(s);
[C,L] = wavedec(s,5,waveletFunction);
[Ea,Ed] = wenergy(C,L);
E(f).d = Ed;
f = f+1;
b = b+1;

end

e=1;
while e<161
c=1;
while c < 6
TestResult5(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end

TestModelTask = "Task_5";

save('EEGENERGYTEST.mat','TestResult5');