
while 1 
    color = brick.ColorCode(3);  % Get Color on port 1.
    display(color);  % Print color code of object.
    if color==2
        disp("Blue");
    end
    if color==3 
        disp("Green");
        
    end
    if color==5
         brick.StopAllMotors('Coast');
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
        
    if distance <= 30
             touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
            
          if touch==true
            brick.beep();     % Beep if the sensor was touched.   
            brick.MoveMotor('A',-40.8);
            brick.MoveMotor('B',-40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 340, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
         else
            disp(distance)
            brick.MoveMotor('A',40.8);
            brick.MoveMotor('B',40);
            pause(1);
            brick.StopAllMotors('Coast');
            % Motor A, B forward at half speed.
            % Let the motors turn for 1 second.
          end 
    else 
        
        if  touch==true
            brick.beep();     % Beep if the sensor was touched.  
            brick.MoveMotor('A',-40.8);
            brick.MoveMotor('B',-40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 340, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
        else
           
            brick.ResetMotorAngle('B'); 
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, -355, 'Brake'); 
            brick.WaitForMotor('B');
            disp('Turned Right');
            brick.StopAllMotors('Coast');
            brick.MoveMotor('A',40.8);
            brick.MoveMotor('B',40);
            pause(4);
            brick.StopAllMotors('Coast');
            brick.MoveMotorAngleRel('B', 20, -355, 'Brake');
            brick.WaitForMotor('B');
            brick.MoveMotor('A',40.8);
             brick.MoveMotor('B',40);
            pause(4);
            brick.StopAllMotors('Coast');
            disp('Turned Right');
            brick.StopAllMotors('Coast');
        end
    end
end
                  