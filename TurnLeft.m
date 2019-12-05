function TurnLeft(brick)
 % Move another 90 degrees.
            brick.MoveMotorAngleRel('A', 20, -280, 'Brake'); 
            brick.WaitForMotor('A'); % Wait for motor to complete motion

           
            disp('Turned Left');
end 