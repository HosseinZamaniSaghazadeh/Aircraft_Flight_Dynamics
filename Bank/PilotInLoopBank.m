%% Pilot in Loop bank
clc 
clear all
%% Transfer Functions
syms s
Kp=1;                                              % Pilot gain
taw=0.1;                                             % Pilot delay
TL=0.4;                                              % Lead
TI=0.2;                                              % Lag
TN=0.1;                                              % Pilot strength parameter
LdelA=17.1510;                           
Lp=-2.81;
Pilot_tfnum = vpa(expand(Kp*(2-taw*s)*(TL*s+1)))                  %Num of the pilot TF (2.0*Kp + 2.0*Kp*TL*s - 1.0*Kp*s*taw - 1.0*Kp*TL*s^2*taw)
Pilot_tfdenum = vpa(expand((2+taw*s)*(TI*s+1)*(TN*s+1)))          %Denum of the pilot TF (2.0*TI*s + 2.0*TN*s + s*taw + 2.0*TI*TN*s^2 + TI*s^2*taw + TN*s^2*taw + TI*TN*s^3*taw + 2.0)
Pilot = tf([(- Kp*TL* taw) (- Kp*taw+ 2*Kp*TL) (2*Kp)],[(TI*TN*taw) (TN*taw+TI*taw+2*TI*TN) (taw+2*TN+2*TI) 2])
PhidelA = tf([LdelA],[1 -Lp 0])
Total_tfnum = vpa(expand(Pilot_tfnum*LdelA))                       %2.0*Kp*LdelA + 2.0*Kp*LdelA*TL*s - 1.0*Kp*LdelA*s*taw - 1.0*Kp*LdelA*TL*s^2*taw                
Total_tfdenum = vpa(expand(Pilot_tfdenum*s*(s-Lp)))                %2.0*TI*s^3 - 2.0*Lp*s + 2.0*TN*s^3 + s^3*taw + 2.0*s^2 - 2.0*Lp*TI*s^2 - 2.0*Lp*TN*s^2 + 2.0*TI*TN*s^4 - 1.0*Lp*s^2*taw + TI*s^4*taw + TN*s^4*taw - 2.0*Lp*TI*TN*s^3 - 1.0*Lp*TI*s^3*taw - 1.0*Lp*TN*s^3*taw + TI*TN*s^5*taw - 1.0*Lp*TI*TN*s^4*taw
TotalTF = tf([(-Kp*LdelA*TL*taw) (2*Kp*LdelA*TL-Kp*LdelA*taw) (2*Kp*LdelA)],[(TI*TN*taw) (-Lp*TI*TN*taw+TI*taw+TN*taw+2*TI*TN) (-2*Lp*TI*TN-Lp*TI*taw-Lp*TN*taw+2*TN+taw+2*TI) (-Lp*taw+2-2*Lp*TI-2*Lp*TN) (-2*Lp) 0])
rlocus(TotalTF)