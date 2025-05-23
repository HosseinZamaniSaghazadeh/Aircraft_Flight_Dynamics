%% Advanced_Flight_Dynamics_Project_Phase#1_Plots

%% Alpha-Time Diagram

%figure('Name','ALpha-Time Diagram')
%plot(alpha)
%title('Angle of Attack Variation due to Time')
%xlabel('Time (sec)')
%ylabel('Alpha (rad)')
%% Theta-Time Diagram

%figure('Name','Theta-Time Diagram')
%plot(Theta)
%title('Pitch Angle Variation due to Time')
%xlabel('Time (sec)')
%ylabel('Theta (rad)')
%% U-Time Diagram

%figure('Name','U-Time Diagram')
%plot(U)
%title('XVelocity Variation due to Time')
%xlabel('Time (sec)')
%ylabel('U (ft/s)')
%% Beta-Time Diagram

figure('Name','Beta-Time Diagram')
plot(beta)
title('Side Slip Angle Variation due to Time')
xlabel('Time (sec)')
ylabel('Beta (rad)')
%% Psi-Time Diagram

%figure('Name','Psi-Time Diagram')
%plot(Psi)
%title('Yaw Angle Variation due to Time')
%xlabel('Time (sec)')%
%ylabel('Psi (rad)')
%% Phi-Time Diagram

figure('Name','Phi-Time Diagram')
plot(Phi)
title('Roll Angle Variation due to Time')
xlabel('Time (sec)')
ylabel('Phi (rad)')
%% ZInertia-Time Diagram

figure('Name','ZInertia-Time Diagram')
plot(ZInertia)
title('Aircraft Altitiude Variation due to Time')
xlabel('Time (sec)')
ylabel('ZInertia (ft)')
%% YInertia-Time Diagram

%figure('Name','YInertia-Time Diagram')
%plot(YInertia)
%title('Aircraft Side Movement  due to Time')
%xlabel('Time (sec)')
%ylabel('YInertia (ft)')
%% XInertia-Time Diagram

%figure('Name','XInertia-Time Diagram')
%plot(XInertia)
%title('Aircraft Longitudinal Movement  due to Time')
%xlabel('Time (sec)')
%ylabel('XInertia (ft)')
%% MAB-Time Diagram

%figure('Name','MAB-Time Diagram')
%plot(MAB)
%title('Pitching Moment Variation due to Time')
%xlabel('Time (sec)')
%ylabel('MAB (lbs.ft)')
%% P-Time Diagram

%figure('Name','P-Time Diagram')
%plot(P)
%title('Roll Rate Variation due to Time')
%xlabel('Time (sec)')
%ylabel('P (rad/s)')
%% Q-Time Diagram

%figure('Name','Q-Time Diagram')
%plot(Q)
%title('Pitch Rate Variation due to Time')
%xlabel('Time (sec)')
%ylabel('Q (rad/s)')
%% FAzB-Time Diagram

%figure('Name','FAzB-Time Diagram')
%plot(FAzB)
%title('Z Force Variation due to Time')
%xlabel('Time (sec)')
%ylabel('FAzB (lbs)')
%% R-Time Diagram

%figure('Name','R-Time Diagram')
%plot(R)
%title('Yaw Rate Variation due to Time')
%xlabel('Time (sec)')
%ylabel('R (rad/s)')
%% W-Time Diagram

%figure('Name','W-Time Diagram')
%plot(W)
%title('W Variation due to Time')
%xlabel('Time (sec)')
%ylabel('W (ft/s)')
%% V-Time Diagram

%figure('Name','V-Time Diagram')
%plot(V)
%title('V Variation due to Time')
%xlabel('Time (sec)')
%ylabel('V (ft/s)')
%% FTx-Time Diagram

%figure('Name','FTx-Time Diagram')
%plot(FTx)
%title('FTx Variation due to Time')
%xlabel('Time (sec)')
%ylabel('FTx (lbs)')
%% FAxB-Time Diagram

%figure('Name','FAxB-Time Diagram')
%plot(FAxB)
%title('FAxB Variation due to Time')
%xlabel('Time (sec)')
%ylabel('FAxB (lbs)')
%% FAyB-Time Diagram

%figure('Name','FAyB-Time Diagram')
%plot(FAyB)
%title('FAyB Variation due to Time')
%xlabel('Time (sec)')
%ylabel('FAyB (lbs)')
%% delE-Time Diagram 

%figure('Name','delE-Time Diagram')
%plot(delE)
%title('Elevator Deflection Variation due to Time')
%xlabel('Time (sec)')
%ylabel('delE (rad)')
%% Altitude-Time Diagram 

figure('Name','Altitude-Time Diagram')
plot(h)
title('Altitiude Variation due to Time')
xlabel('Time (sec)')
ylabel('Altitude (ft)')
%% Noise

%figure('Name','White Noise-Time Diagram')
%plot(tout(1:600),WhiteNoise(1:600))
%title('White Noise due to Time')
%xlabel('Time (sec)')
%ylabel('White Noise')
%% Flight Path Diagram 

figure('Name','Flight Path Diagram')
plot(XInertia.Data,YInertia.Data)
title('Flight Path')
xlabel('X (ft)')
ylabel('Y (ft)')
figure('Name','Flight Path Diagram 3D')
plot3(XInertia.Data,YInertia.Data,ZInertia.Data)