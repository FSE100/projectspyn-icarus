brick.ResetMotorAngle('C'); 
brick.MoveMotorAngleAbs('C', 20, -45, 'Coast');
pause(3);
brick.StopAllMotors('Coast');
brick.MoveMotor('A',-39.25);
brick.MoveMotor('B',-40);
pause(1);
brick.StopAllMotors('Coast');
brick.ResetMotorAngle('C'); 

brick.MoveMotorAngleAbs('C', 20, 45, 'Coast');
pause(3);
brick.StopAllMotors('Coast');