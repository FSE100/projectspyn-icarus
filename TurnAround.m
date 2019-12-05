function TurnAround(brick)

 brick.ResetMotorAngle('A');
 brick.MoveMotorAngleAbs('A',20,360,'Brake');
 brick.WaitForMotor('A');
           

end