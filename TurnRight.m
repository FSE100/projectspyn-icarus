function TurnRight(brick)
brick.ResetMotorAngle('B'); 
% Move another 90 degrees.
brick.MoveMotorAngleRel('B', 20, -280, 'Brake'); 
brick.WaitForMotor('B');
disp('Turned Right');
end