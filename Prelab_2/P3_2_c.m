R1=1e3;
R3=1e4;
R2=120;
C=1.5e-9;
sys=tf([R2*R3*C/(R1+R2) 0],[R1*R2*R3*C^2/(R1+R2) 2*R1*R2*C/(R1+R2) 1]);
fb=bandwidth(sys);
[mag,phase,wout]=bode(sys);
[gpeak,fpeak]=getPeakGain(sys);