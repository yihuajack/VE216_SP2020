t=linspace(0,10,11);
pi=3.14159;
E=2.718;
T=10;
a0=0;
m=5;
w=2*pi/T;
f=a0;
for n=1:m
    an=(1-cos(8*pi*n/5))/10;
    bn=sin(8*pi*n/5)/10;
    f=f+2*an*cos(n*w*t);
    f=f-2*bn*sin(n*w*t);
end
plot(t,f)

