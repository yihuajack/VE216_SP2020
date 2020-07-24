%t=linspace(0.5,4.5,10000);
t=1;
%T=10;
e=exp(1);
a0=1/2-1/(2*e);
N=19;
w=pi;
f=a0;
for k=1:N
    f=f+(1-((-1)^k/e))/(pi^2*k^2+1)*(cos(w*k.*t)+pi*k*sin(w*k.*t));
end
f
%plot(t,f)
