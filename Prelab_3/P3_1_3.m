R=1e4;
C1=1e-4;
C2=2.5e-7;
sys=tf(1,[C1*C2*R^2 2*C2*R 1]);
step(sys);
grid;