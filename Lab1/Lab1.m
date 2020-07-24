clear;
R=1e3;
C=1e-6;

% [u,t]=gensig('square',T);
% H=tf([0 1],[R*C,1]);
% lsim(H,u,t);
% axis([0 0.04 -0.5 1.5]);
% SWF=phased.RectangularWaveform('PulseWidth',1e-3,'PRF',T);
% rectwav=step(SWF);
% totaldur=4*1/SWF.PRF;
% syms t w
% x=rectangularPulse(0.005,0.01,t)+rectangularPulse(0.015,0.02,t)...
%     +rectangularPulse(0.025,0.03,t)+rectangularPulse(0.035,0.04,t);
% f=fourier(x);
% y=f/(1i*w*R*C+1);

t=0:1e-5:0.04;
h=exp(-t./(R*C))/(R*C).*heaviside(t);
d=0.0025:0.01:0.04;
y1=pulstran(t,d,'rectpuls',0.005);
y2=conv(y1,h);
plot(t,y1,t,1e-5*y2(1:4001));
axis([0 0.04 -0.5 1.5]);
legend('Square Wave','Step Response');

t=0:1e-5:0.04;
h=exp(-t./(R*C))/(R*C).*heaviside(t);
d=0.005:0.01:0.04;
y1=0.1*pulstran(t,d,'tripuls',0.01,-1);
y2=conv(y1,h);
plot(t,y1,t,1e-5*y2(1:4001));
axis([0 0.04 -0.05 0.15]);
legend('Ramp Wave','Ramp Response');

t=0:1e-5:0.04;
h=exp(-t./(R*C))/(R*C).*heaviside(t);
plot(t,h);
legend('Pulse Response');

t=0:1e-5:0.04;
h=exp(-t./(R*C))/(R*C).*heaviside(t);
d=0.00025:0.01:0.04;
y1=0.1*pulstran(t,d,'rectpuls',0.001);
y2=conv(y1,h);
plot(t,y1,t,1e-5*y2(1:4001));
axis([0 0.04 -0.05 0.15]);
legend('Pulse Wave (Width = 1ms)','Pulse Response');

t=0:1e-5:0.04;
h=exp(-t./(R*C))/(R*C).*heaviside(t);
d=0.00025:0.01:0.04;
y1=0.2*pulstran(t,d,'rectpuls',0.0005);
y2=conv(y1,h);
plot(t,y1,t,1e-5*y2(1:4001));
axis([0 0.04 -0.05 0.25]);
legend('Pulse Wave (Width = 0.5ms)','Pulse Response');

% The following quantities can be read from the prelab assignment 4.6.
f=[50 500 5000];
ratio=1./sqrt(1+(2*pi*R*C.*f).^2)
time_shift=atan(2*pi*R*C.*f)./(2*pi*R*C.*f)
phase_shift=atan(2*pi*R*C.*f).*-180./pi