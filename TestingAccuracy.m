%This script calculates testing accuracy for each task for Testing Model 1
a=0;
b=0;
c=0;
d=0;
e=0;
vA= validationAccuracy*100;

x=1;
while x<481
if yfit1(x) == 0
    a = a+1;
end
x=x+1;
end
a=(a/480)*100;
TestingAccuracy1 = (a+vA)/2;

x=1;
while x<481
if yfit2(x) == 1
    b = b+1;
end
x=x+1;
end
b=(b/480)*100;
TestingAccuracy2 = (b+vA)/2;

x=1;
while x<481
if yfit3(x) == 2
    c = c+1;
end
x=x+1;
end
c=(c/480)*100;
TestingAccuracy3 = (c+vA)/2;

x=1;
while x<481
if yfit4(x) == 3
    d = d+1;
end
x=x+1;
end
d=(d/480)*100;
TestingAccuracy4 = (d+vA)/2;

x=1;
while x<161
if yfit5(x) == 4
    e = e+1;
end
x=x+1;
end
e=(e/160)*100;
TestingAccuracy5 = (e+vA)/2;
