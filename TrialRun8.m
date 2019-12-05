bumps=brick.TouchBumps(1);
disp(bumps);
while 1 
    color = brick.ColorCode(3);  % Get Color on port 1.
    display(color);  % Print color code of object.
    if color==2
        disp("Blue");
    end
    if color==3 
        disp("Green");
        
    end
    if color==4
     disp("Yellow");
    end
    if color==4
    brick.StopAllMotors('Coast');  
    EnterManualMode(brick);
    
    end
   
    
    distance = brick.UltrasonicDist(4);
    disp(distance);
         bump = brick.TouchBumps(1); % Get bumps on port 1
         display(bumps); 
         disp(bump);% Print # of bumps to command window.
    if distance <= 25
        if bump>bumps
            brick.beep();
            bumps=bump;
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 360, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
        else
            disp(distance)
            brick.MoveMotor('A',39.25);
            brick.MoveMotor('B',40);
            pause(1);
            brick.StopAllMotors('Coast');
            % Motor A, B forward at half speed.
            % Let the motors turn for 1 second.
        end 
    else 
         bump = brick.TouchBumps(1); % Get bumps on port 1
         display(bumps); 
         disp(bump);% Print # of bumps to command window.

        if bump>bumps
            brick.beep();
            bumps=bump;
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 360, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
        else
            brick.MoveMotor('A',39.25);
            brick.MoveMotor('B',40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            brick.ResetMotorAngle('B'); 
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, -280, 'Brake'); 
            brick.WaitForMotor('B');
            disp('Turned Right');
            brick.StopAllMotors('Coast');
            brick.MoveMotor('A',40.1);
            brick.MoveMotor('B',40);
            pause(1.5);
            brick.StopAllMotors('Coast');
            brick.MoveMotorAngleRel('B', 20, -360, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned Right');
            brick.StopAllMotors('Coast');
        end
    end
end
                  