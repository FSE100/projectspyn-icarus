function TurnLeft()
distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
display(distance);   
brick.ResetMotorAngle('A'); 
% Move another 90 degrees.
brick.MoveMotorAngleAbs('A', 20, -360, 'Brake'); 
brick.WaitForMotor('A');
% Print distance.
if distance < 30
    count = count+1
    TurnRight();
else 
    MoveForward();

end 