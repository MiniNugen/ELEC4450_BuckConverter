Rl=34;
% Rin=2835;
Rin = 16235;
R1=165;

wc = 250; %rad/s
wl = 11000;%rad/s
%C=1/(wc*Rin);
L = (Rl+R1)/wl;
C= 1.5e-6;
s = tf('s');
G = (R1/(Rin*C*L)) / ((s+1/(C*Rin))*(s+ ((Rl+R1)/L) ))
[p,z] = pzmap(G)
margin(G);
