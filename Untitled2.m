close all
clc

 promt = 'introduzca el valor (grados) de la primera articulacion:';
 theta1_deg = input(promt);
 theta1_Rad = deg2rad(theta1_deg);
 
  promt = 'introduzca el valor (grados) de la segunda articulacion:';
 theta2_deg = input(promt);
 theta2_Rad = deg2rad(theta2_deg);
 
 
for theta1_Rad=0:0.01:theta1_Rad
    
   clf
PrintAxis();
p1=[0;0;0];
L1=8;
L2=4;

% theta1_deg = 30;
% theta1_Rad = deg2rad(theta1_deg);
% theta2_deg = -15;
% theta2_Rad = deg2rad(theta2_deg);


TRz1 = [cos(theta1_Rad) -sin(theta1_Rad) 0 0;sin(theta1_Rad) cos(theta1_Rad) 0 0;0 0 1 0;0 0 0 1];
TRx1 = [1 0 0 L1;0 1 0 0; 0 0 1 0; 0 0 0 1];
T1=TRz1*TRx1;
p2=T1(1:3,4);
line([p1(1) p2(1)],[p1(2) p2(2)],[p1(2) p2(2)],'color',[0 0 0],'linewidth',5)

pause(0.1)
end
for theta2_Rad=0:0.01:theta2_Rad
   clf
PrintAxis();
line([p1(1) p2(1)],[p1(2) p2(2)],[p1(2) p2(2)],'color',[0 0 0],'linewidth',5)
TRz2 = [cos(theta2_Rad) -sin(theta2_Rad) 0 0;sin(theta2_Rad) cos(theta2_Rad) 0 0;0 0 1 0;0 0 0 1];
TRx2 = [1 0 0 L2;0 1 0 0; 0 0 1 0; 0 0 0 1];
T2=TRz2*TRx2;
Tf=T1*T2;
p3=Tf(1:3,4);
line([p2(1) p3(1)],[p2(2) p3(2)],[p2(2) p3(2)],'color',[0.4 0 0.8],'linewidth',5)%segundo eslabon del brazo
pause(0.1)
end