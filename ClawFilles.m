brick.ResetMotorAngle('C'); 
brick.MoveMotorAngleAbs('C', 20, -90, 'Coast');
pause(5);

brick.MoveMotorAngleAbs('C', 20, 90, 'Coast');
pause(5);
