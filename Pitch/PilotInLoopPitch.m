%% Pilot in Loop pitch
clc 
clear all
%% Transfer Functions
syms s 
Kp=-1;                                              % Pilot gain
taw=0.1;                                             % Pilot delay
TL=0.4;                                              % Lead
TI=0.2;                                              % Lag
TN=0.1;                                              % Pilot strength parameter
Pilot_tfnum = expand(Kp*(2-taw*s)*(TL*s+1))                  %Num of the pilot TF (2.0*Kp + 2.0*Kp*TL*s - 1.0*Kp*s*taw - 1.0*Kp*TL*s^2*taw)
Pilot_tfdenum = expand((2+taw*s)*(TI*s+1)*(TN*s+1))          %Denum of the pilot TF (2.0*TI*s + 2.0*TN*s + s*taw + 2.0*TI*TN*s^2 + TI*s^2*taw + TN*s^2*taw + TI*TN*s^3*taw + 2.0)
Pilot = tf([(- Kp*TL* taw) (- Kp*taw+ 2*Kp*TL) (2*Kp)],[(TI*TN*taw) (TN*taw+TI*taw+2*TI*TN) (taw+2*TN+2*TI) 2])
thetadele = tf([-10371.2086 -12042.5102 -226.3310],[451.8346 2197.1573 11332.6989 154.0270  101.9633])
Total_tfnum = expand(Pilot_tfnum*(-10371.2086*s^2-12042.5102*s-226.3310))                       %2.0*Kp*LdelA + 2.0*Kp*LdelA*TL*s - 1.0*Kp*LdelA*s*taw - 1.0*Kp*LdelA*TL*s^2*taw                
Total_tfdenum = expand(Pilot_tfdenum*(451.8346*s^4+2197.1573*s^3+11332.6989*s^2+154.0270*s+101.9633))                %2.0*TI*s^3 - 2.0*Lp*s + 2.0*TN*s^3 + s^3*taw + 2.0*s^2 - 2.0*Lp*TI*s^2 - 2.0*Lp*TN*s^2 + 2.0*TI*TN*s^4 - 1.0*Lp*s^2*taw + TI*s^4*taw + TN*s^4*taw - 2.0*Lp*TI*TN*s^3 - 1.0*Lp*TI*s^3*taw - 1.0*Lp*TN*s^3*taw + TI*TN*s^5*taw - 1.0*Lp*TI*TN*s^4*taw
TotalTF = tf([((5701632224895225*Kp*TL*taw)/549755813888) ((3310219998127771*Kp*TL*taw)/274877906944+(5701632224895225*Kp*taw)/549755813888-(5701632224895225*Kp*TL)/274877906944) (-(5701632224895225*Kp)/274877906944-(3310219998127771*Kp*TL)/137438953472+(3310219998127771*Kp*taw)/274877906944+(7963314119237435*Kp*TL*taw)/35184372088832) (7963314119237435*Kp*taw)/35184372088832-(3310219998127771*Kp)/137438953472-(7963314119237435*Kp*TL)/17592186044416-(7963314119237435*Kp)/17592186044416],[((3974379172252143*TI*TN*taw)/8796093022208) (+(3974379172252143*TI*TN)/4398046511104+(3974379172252143*TI*taw)/8796093022208+(3974379172252143*TN*taw)/8796093022208+(2415799999402921*TI*TN*taw)/1099511627776) (+(3974379172252143*TI)/4398046511104+(3974379172252143*TN)/4398046511104+(3974379172252143*taw)/8796093022208+(2415799999402921*TI*TN)/549755813888+(2415799999402921*TI*taw)/1099511627776+(2415799999402921*TN*taw)/1099511627776+(3115108553658571*TI*TN*taw)/274877906944) (+(2415799999402921*TI)/549755813888+(2415799999402921*TN)/549755813888+(2415799999402921*taw)/1099511627776+(3974379172252143)/4398046511104+(3115108553658571*TI*TN)/137438953472+(3115108553658571*TI*taw)/274877906944+(3115108553658571*TN*taw)/274877906944+(2709671639863263*TI*TN*taw)/17592186044416) (+(3115108553658571*TI)/137438953472+(3115108553658571*TN)/137438953472+(3115108553658571*taw)/274877906944+(2415799999402921)/549755813888+(2709671639863263*TI*TN)/8796093022208+(2709671639863263*TI*taw)/17592186044416+(2709671639863263*TN*taw)/17592186044416+(896878671651301*TI*TN*taw)/8796093022208) (+(2709671639863263*TI)/8796093022208+(2709671639863263*TN)/8796093022208+(2709671639863263*taw)/17592186044416+(3115108553658571)/137438953472+(896878671651301*TI*TN)/4398046511104+(896878671651301*TI*taw)/8796093022208+(896878671651301*TN*taw)/8796093022208) (+(2709671639863263)/8796093022208+(896878671651301*TI)/4398046511104+(896878671651301*TN)/4398046511104+(896878671651301*taw)/8796093022208) (+ 896878671651301/4398046511104)])
                                       
rlocus(TotalTF)






