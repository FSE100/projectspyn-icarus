touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
flag=0;
    if touch==true
    flag=1;
    disp(flag);
    end
    if flag==1
        
        brick.beep();     % Beep if the sensor was touched.
        brick.MoveMotor('A',-40);
        brick.MoveMotor('B',-40);
        pause(0.5);
        brick.StopAllMotors('Coast');
        
         
        brick.ResetMotorAngle('B'); 
        % Move another 90 degrees.
        brick.MoveMotorAngleRel('B', 20, 280, 'Brake'); 
        brick.WaitForMotor('B');
        disp('Turned left');
    end
    