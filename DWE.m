%This script calcualte discrete wavelet energy for each epoch and labels data to be ready for machine learning
EpochSignal;

a = 1;
h=1;

sa(1).d = v3(1).e(13); %Dataset1.1, Fist, C3 Channel
sa(2).d = v3(3).e(13); %Dataset1.2, Fist, C3 Channel 
sa(3).d = v3(5).e(13); %Dataset1.3, Fist, C3 Channel
sa(4).d = v3(7).e(13); %Dataset1.4, Fist, C3 Channel 
sa(5).d = v6(1).e(1);  %Dataset2.1 , Foot, C3 Channel
sa(6).d = v6(2).e(1);  %Dataset2.2 , Foot, C3 Channel
sa(7).d = v6(3).e(1);  %Dataset2.3 , Foot, C3 Channel
sa(8).d = v6(4).e(1);  %Dataset2.4 , Foot, C3 Channel
sa(9).d = v8(1).e(1);  %Dataset3.1 , Finger, C3 Channel
sa(10).d = v8(2).e(1);  %Dataset3.2 , Finger, C3 Channel
sa(11).d = v8(3).e(1);  %Dataset3.3 , Finger, C3 Channel
sa(12).d = v8(4).e(1);  %Dataset3.4 , Finger, C3 Channel
sa(13).d = v9(1).e(1);  %Dataset4.1 , LRHand, C3 Channel
sa(14).d = v9(2).e(1);  %Dataset4.2 , LRHand, C3 Channel
sa(15).d = v9(3).e(1);  %Dataset4.3 , LRHand, C3 Channel
sa(16).d = v9(4).e(1);  %Dataset4.4 , LRHand, C3 Channel
sa(17).d = v10(1).e(1);  %Dataset5.1 , Tongue, C3 Channel
sa(18).d = v10(2).e(1);  %Dataset5.2 , Tongue, C3 Channel
sa(19).d = v10(3).e(1);  %Dataset5.3 , Tongue, C3 Channel
sa(20).d = v10(4).e(1);  %Dataset5.4 , Tongue, C3 Channel
sa(21).d = v3(1).e(50); %Dataset1.1, Fist, C4 Channel
sa(22).d = v3(3).e(50); %Dataset1.2, Fist, C4 Channel
sa(23).d = v3(5).e(50); %Dataset1.3, Fist, C4 Channel
sa(24).d = v3(7).e(50); %Dataset1.4, Fist, C4 Channel
sa(25).d = v6(1).e(3);  %Dataset2.1 , Foot, C4 Channel
sa(26).d = v6(2).e(3);  %Dataset2.2 , Foot, C4 Channel
sa(27).d = v6(3).e(3);  %Dataset2.3 , Foot, C4 Channel
sa(28).d = v6(4).e(3);  %Dataset2.4 , Foot, C4 Channel
sa(29).d = v8(1).e(3);  %Dataset3.1 , Finger, C4 Channel
sa(30).d = v8(2).e(3);  %Dataset3.2 , Finger, C4 Channel
sa(31).d = v8(3).e(3);  %Dataset3.3 , Finger, C4 Channel
sa(32).d = v8(4).e(3);  %Dataset3.4 , Finger, C4 Channel
sa(33).d = v9(1).e(3);  %Dataset4.1 , LRHand, C4 Channel
sa(34).d = v9(2).e(3);  %Dataset4.2 , LRHand, C4 Channel
sa(35).d = v9(3).e(3);  %Dataset4.3 , LRHand, C4 Channel
sa(36).d = v9(4).e(3);  %Dataset4.4 , LRHand, C4 Channel
sa(37).d = v10(1).e(1);  %Dataset5.1 , Tongue, C4 Channel
sa(38).d = v10(2).e(1);  %Dataset5.2 , Tongue, C4 Channel
sa(39).d = v10(3).e(1);  %Dataset5.3 , Tongue, C4 Channel
sa(40).d = v10(4).e(1);  %Dataset5.4 , Tongue, C4 Channel
sa(41).d = v3(1).e(48); %Dataset1.1, Fist, Cz Channel
sa(42).d = v3(3).e(48); %Dataset1.2, Fist, Cz Channel
sa(43).d = v3(5).e(48); %Dataset1.3, Fist, Cz Channel
sa(44).d = v3(7).e(48); %Dataset1.4, Fist, Cz Channel
sa(45).d = v6(1).e(2);  %Dataset2.1 , Foot, CZ Channel
sa(46).d = v6(2).e(2);  %Dataset2.2 , Foot, CZ Channel
sa(47).d = v6(3).e(2);  %Dataset2.3 , Foot, CZ Channel
sa(48).d = v6(4).e(2);  %Dataset2.4 , Foot, CZ Channel
sa(49).d = v8(1).e(2);  %Dataset3.1 , Finger, CZ Channel
sa(50).d = v8(2).e(2);  %Dataset3.2 , Finger, CZ Channel
sa(51).d = v8(3).e(2);  %Dataset3.3 , Finger, CZ Channel
sa(52).d = v8(4).e(2);  %Dataset3.4 , Finger, CZ Channel
sa(53).d = v9(1).e(2);  %Dataset4.1 , LRHand, CZ Channel
sa(54).d = v9(2).e(2);  %Dataset4.2 , LRHand, CZ Channel
sa(55).d = v9(3).e(2);  %Dataset4.3 , LRHand, CZ Channel
sa(56).d = v9(4).e(2);  %Dataset4.4 , LRHand, CZ Channel
sa(57).d = v10(1).e(1);  %Dataset5.1 , Tongue, CZ Channel
sa(58).d = v10(2).e(1);  %Dataset5.2 , Tongue, CZ Channel
sa(59).d = v10(3).e(1);  %Dataset5.3 , Tongue, CZ Channel
sa(60).d = v10(4).e(1);  %Dataset5.4 , Tongue, CZ Channel

fs = 160; % Sampling frequency

waveletFunction = 'db4';

f = 1;
b = 1;

while a < 21
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
AE(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end
b = 1;

while a < 41
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
AE(h,c) = E(h).d(c);
c = c+1;
end
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end
b = 1;

while a < 61
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
AE(h,c) = E(h).d(c);
c = c+1;
end 
h = h+1;
e = e+1;
end
a = a+1;
b=1;
end

t = 1;
while t < 7681
    t2 = 1;
    while t2 < 641
        AE(t,6) = 0;
        t2 = t2+1;
        t = t+1;
    end
    t2 = 1;
    while t2 < 641
        AE(t,6) = 1;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 641
        AE(t,6) = 2;
        t2 = t2+1;
        t = t+1;
    end
    
      t2 = 1;
    while t2 < 641
        AE(t,6) = 3;
        t2 = t2+1;
        t = t+1;
    end
    
    t2 = 1;
    while t2 < 641
        AE(t,6) = 4;
        t2 = t2+1;
        t = t+1;
    end
    
end

save('EEGENERGY.mat','AE');