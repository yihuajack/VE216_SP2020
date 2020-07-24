t=linspace(0,0.01,1000);
y=(1-exp(-1000*t)).*heaviside(t);
plot(t,y);
axis([0 0.01 0 1]);