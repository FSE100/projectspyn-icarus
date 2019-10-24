% Make Current Position 0
brick.ResetMotorAngle('A'); 

% Move another 90 degrees.
brick.MoveMotorAngleAbs('A', 20, 90, 'Brake'); 
brick.WaitForMotor('A'); % Wait for motor to complete motion

position = brick.GetMotorAngle('A'); % Get Current Position
display(position);
