while 1 %start
    
    %detect color 
    color = brick.ColorCode(3);  % Get Color on port 3.
    
    %display color to keep track of outputs
    display(color);  % Print color code of object.
    
    if color==3 % 3 is the code for green
        disp("Green"); % this is the drop point
        
        %gain manual control of the system 
        brick.StopAllMotors('Coast');  
        EnterManualMode(brick);
        break; 
        %stop
    end
    
    if color==5 % 5 is the code for red
        % make the vehicle stop for 5 seconds
         brick.StopAllMotors('Coast');
         pause(5); %stop for 5 seconds
         
         %resume moving forward 
         brick.MoveMotor('A',41);
         brick.MoveMotor('B',40);
         pause(0.5);
         brick.StopAllMotors('Coast');
         
    end
    
    if color==4        
        disp("Yellow"); % this is the pick up point
        
        %gain manual control of the system
        brick.StopAllMotors('Coast');  
        EnterManualMode(brick);    
    end
    
    if color==2 
     distance = brick.UltrasonicDist(4);%finds the distance from the nearest wall
     %display distance to keep track of outputs
     display(distance);  
      
     % in the mechianism, the car follows the walls by sensing them against
     % using the ultrasonic sensor
     
     if distance <= 40 %normal situation
         touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
             
         %if the touch sensor is pressed, which means there's a wall in the
         %front
         if touch==true
            brick.beep();     % Beep if the sensor was touched.   
            
            %car moves bakcwards to take a proper turn
            brick.MoveMotor('A',-41);
            brick.MoveMotor('B',-40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            
            %take a left turn
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 340, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
            
         else
            %no wall obstruction
            %move forward beside the wall
            disp(distance);
            brick.MoveMotor('A',41);
            brick.MoveMotor('B',40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            % Motor A, B forward at half speed.
            % Let the motors turn for 1 second.
         end
     elseif distance == 255
         disp(distance);
            brick.MoveMotor('A',41);
            brick.MoveMotor('B',40);
            pause(1);
            brick.StopAllMotors('Coast');
            % Motor A, B forward at half speed.
            % Let the motors turn for 1 second.
         
     else %distance is greater than 30 cm
         %if the touch sensor is pressed, which means there's a wall in the
         %front
         if touch==true
            brick.beep();     % Beep if the sensor was touched.   
            
            %car moves bakcwards to take a proper turn
            brick.MoveMotor('A',-41);
            brick.MoveMotor('B',-40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            
            %take a left turn
            brick.ResetMotorAngle('B');
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, 340, 'Brake');
            brick.WaitForMotor('B');
            disp('Turned left');
          
         else %there is not wall obstruction in the front but not wall in the right to sense
         % turn right
            brick.MoveMotor('A',41);
            brick.MoveMotor('B',40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            brick.ResetMotorAngle('B'); 
            % Move another 90 degrees.
            brick.MoveMotorAngleRel('B', 20, -355, 'Brake'); 
            brick.WaitForMotor('B');
            disp('Turned Right');
            brick.StopAllMotors('Coast');
            %Move around the wall
            brick.MoveMotor('A',41);
            brick.MoveMotor('B',40);
            pause(0.5);
            brick.StopAllMotors('Coast');
            
         end
     end
    end
    
end

    