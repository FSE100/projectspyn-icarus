
count = 0;
flag =0;
while 1
 brick.MoveMotor('AB',100);
 pause(1);
 brick.StopAllMotors('Coast');
 
 if distance<30
    count=count+1;
    distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
    display(distance);   
    brick.ResetMotorAngle('A'); 
    % Move another 90 degrees.
    brick.MoveMotorAngleAbs('A', 20, -360, 'Brake'); 
    brick.WaitForMotor('A');
    % Print distance.
    if distance < 30
    count = count+1
   distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
display(distance);   
brick.ResetMotorAngle('A'); 
% Move another 90 degrees.
brick.MoveMotorAngleAbs('A', 20, 720, 'Brake'); 
brick.WaitForMotor('A');
if distance < 30
    count = count+1
    disp(count);
    distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
display(distance);   
brick.ResetMotorAngle('A'); 
% Move another 90 degrees.
brick.MoveMotorAngleAbs('A', 20, 1440, 'Brake'); 
brick.WaitForMotor('A');
else
   brick.MoveMotor('AB',100);
 pause(1);
 brick.StopAllMotors('Coast');
end
else 
   brick.MoveMotor('AB',100);
 pause(1);
 brick.StopAllMotors('Coast');
 
end 
else 
   brick.MoveMotor('AB',100);
 pause(1);
 brick.StopAllMotors('Coast');
end
 
    
    
end  


 


