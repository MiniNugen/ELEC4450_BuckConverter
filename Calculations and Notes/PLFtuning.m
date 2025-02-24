Rl=34;
Rin = 20337;
Ro=165;
L = 0.0181;
C= 1.5e-6;
H = tf([Ro],[L*C*Rin, L+(C*Rin*Rl)+(C*Rin*Ro), (Rin+Rl+Ro)]);
margin(H);
[p,z] = pzmap(H)
B = bandwidth(H)
