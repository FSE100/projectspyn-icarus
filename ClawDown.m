function ClawDown(brick)
brick.ResetMotorAngle('C');

brick.MoveMotorAngleAbs('C', 20, -90, 'Coast');
brick.StopAllMotors('Coast');
end
