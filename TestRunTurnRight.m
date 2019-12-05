while 1
brick.MoveMotor('AB',30);   
pause(1);
brick.StopAllMotors('Coast');
distance = brick.UltrasonicDist(3);  % Get distance to the nearest object.
display(distance);   
if distance < 19
    brick.ResetMotorAngle('A'); 
    % Move another 90 degrees.
    brick.MoveMotorAngleAbs('A', 20, 400, 'Brake'); 
    brick.WaitForMotor('A');
end
end 
