global key
InitKeyboard();

while 1
    pause (0.1);
    switch key
        case 'w'
           brick.MoveMotor('A',39.25);
           brick.MoveMotor('B',40);
           pause(1);
           brick.StopAllMotors('Coast');
           % Motor A, B forward at half speed.
                                % Let the motors turn for 1 second.
            
            
         case 's'
           brick.MoveMotor('A',-39.25);
           brick.MoveMotor('B',-40);
           pause(1);
           brick.StopAllMotors('Coast');
            
        case 'd'
           

            brick.ResetMotorAngle('B'); 
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, -90, 'Brake'); 
            brick.WaitForMotor('B');
            position = brick.GetMotorAngle('B'); % Get Current Position
            display(position);
             
        case 'a'     
 
            brick.ResetMotorAngle('B'); 
            % Move another 90 degrees.
            brick.MoveMotorAngleAbs('B', 20, 90, 'Brake'); 
            brick.WaitForMotor('B'); % Wait for motor to complete motion

            position = brick.GetMotorAngle('B'); % Get Current Position
            display(position);
        case 'u'
            ClawUp();
        
        case 'n'
            ClawDown();

       case 'q'
           brick.StopAllMotors('Coast');
           break;
    end
end
CloseKeyboard();
