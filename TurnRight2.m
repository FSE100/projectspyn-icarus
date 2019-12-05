function TurnRight()
distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
display(distance);   
brick.ResetMotorAngle('A'); 
% Move another 90 degrees.
brick.MoveMotorAngleAbs('A', 20, 720, 'Brake'); 
brick.WaitForMotor('A');
if distance < 30
    count = count+1
    disp(count);
    TurnBackward();
end
end