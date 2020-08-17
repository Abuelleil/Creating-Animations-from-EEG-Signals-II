%This script segments testing data into epochs and calculate discrete wavelet energy for each epoch 
t1 = "S004R4.edf";
[header,S] = edfread(t1);
S(65,:)=[];
b = 1;
while b < 65 
signal(b).d = S(b,:);
n = 1;
x = 1;
y = 87;
while n < 161
    v3(1).e(b).eeg(n).d = signal(b).d(x:y);
    x = x+87;
    y = y+87;
    n = n+1;
end
b = b+1;
end

a = 1;
h=1;
sa(1).d = v3(1).e(13); %Dataset1.1, Fist, C3 Channel
sa(2).d = v3(1).e(50); %Dataset1.1, Fist, C4 Channel
sa(3).d = v3(1).e(48); %Dataset1.1, Fist, CZ Channel
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
TestResult1(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end

TestModelTask = "Task_1";

save('EEGENERGYTEST.mat','TestResult1');