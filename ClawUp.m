function ClawUp(brick)
brick.MoveMotorAngleAbs('C', 20, 90, 'Coast');
brick.StopAllMotors('Coast');
TurnAround(brick);
end


