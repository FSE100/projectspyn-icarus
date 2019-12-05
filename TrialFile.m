bumps=brick.TouchBumps(1);
while 1
         while 1 
        bump = brick.TouchBumps(1); % Get bumps on port 1
        display(bumps);              % Print # of bumps to command window.

        if bump>bumps
         brick.beep(); 
         bumps=bump;
         brick.ResetMotorAngle('B'); 
         % Move another 90 degrees.
         brick.MoveMotorAngleRel('B', 20, 320, 'Brake'); 
         brick.WaitForMotor('B');
         disp('Turned left'); 
         break;
        else
            break;
        end
        end
        distance = brick.UltrasonicDist(4);
        disp(distance);
         if distance <= 15
       
        
        disp(distance);
        brick.MoveMotor('A',39.25);
        brick.MoveMotor('B',40);
        pause(1);
        brick.StopAllMotors('Coast');
        % Motor A, B forward at half speed.
        % Let the motors turn for 1 second.
    else 
        
        brick.ResetMotorAngle('B'); 
        % Move another 90 degrees.
        brick.MoveMotorAngleRel('B', 20, -280, 'Brake'); 
        brick.WaitForMotor('B');
        disp('Turned Right');
        
        
        brick.MoveMotor('A',39.25);
        brick.MoveMotor('B',40);
        pause(2.5);
        brick.StopAllMotors('Coast');
        
        
        brick.ResetMotorAngle('B'); 
        % Move another 90 degrees.
        brick.MoveMotorAngleRel('B', 20, -280, 'Brake'); 
        brick.WaitForMotor('B');
        disp('Turned Right');
        brick.MoveMotor('A',39.25);
        brick.MoveMotor('B',40);
        pause(1.5);
        brick.StopAllMotors('Coast');
        
    end
end

    