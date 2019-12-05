while 1 
    
    if color==3 || color == 4
        disp(color);
        EnterManualMode();
        if color == 3
            break;
        end
    
    elseif color==5 
        disp(color);
        brick.StopAllMotors('Coast');
        pause(5);
        brick.MoveMotor('A',-45);
        brick.MoveMotor('B',-40);
        pause(0.5);
        brick.StopAllMotors('Coast');
     
    elseif color~=3 && color~=4 && color~=5
        disp(color);
            distance = brick.UltrasonicDist(4);%finds the distance from the nearest wall
            %display distance to keep track of outputs
            display(distance);  
      
            % in the mechianism, the car follows the walls by sensing them against
            % using the ultrasonic sensor
     
            if distance <= 50 %normal situation
                touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
             
                %if the touch sensor is pressed, which means there's a wall in the
                %front
                if touch==true
                     brick.beep();     % Beep if the sensor was touched.   
            
                     %car moves bakcwards to take a proper turn
                     brick.MoveMotor('A',-45);
                     brick.MoveMotor('B',-40);
                     pause(0.5);
                     brick.StopAllMotors('Coast');
            
                     %take a left turn
                     brick.ResetMotorAngle('B');
                     % Move another 90 degrees.
                     brick.MoveMotorAngleRel('B', 20, 330, 'Brake');
                     brick.WaitForMotor('B');
                     disp('Turned left');
            
                else
                     %no wall obstruction
                     %move forward beside the wall
                     disp(distance);
                     brick.MoveMotor('A',45);
                     brick.MoveMotor('B',40);
                     pause(1);
                     brick.StopAllMotors('Coast');
                     % Motor A, B forward at half speed.
                     % Let the motors turn for 1 second.
                end
                elseif distance == 255
                    
                     disp(distance);
                     
                     brick.MoveMotor('A',-45);
                     brick.MoveMotor('B',-40);
                     pause(0.25);
                     
                      brick.ResetMotorAngle('A');
                        % Move another 90 degrees.
                        brick.MoveMotorAngleRel('A', 20, 40, 'Brake');
                        brick.WaitForMotor('A');
                        disp('Adjusted');
                    
                     brick.StopAllMotors('Coast');
                     % Motor A, B forward at half speed.
                     % Let the motors turn for 1 second.
         
                else %distance is greater than 30 cm
                     %if the touch sensor is pressed, which means there's a wall in the
                     %front
                     if touch==true
                        brick.beep();     % Beep if the sensor was touched.   
            
                        %car moves bakcwards to take a proper turn
                         brick.MoveMotor('A',-45);
                         brick.MoveMotor('B',-40);
                         pause(0.5);
                         brick.StopAllMotors('Coast');
            
                        %take a left turn
                        brick.ResetMotorAngle('B');
                        % Move another 90 degrees.
                        brick.MoveMotorAngleRel('B', 20, 330, 'Brake');
                        brick.WaitForMotor('B');
                        disp('Turned left');
          
                      else %there is not wall obstruction in the front but not wall in the right to sense
                           % turn right
                        brick.ResetMotorAngle('B'); 
                        % Move another 90 degrees.
                        brick.MoveMotorAngleRel('B', 20, -355, 'Brake'); 
                        brick.WaitForMotor('B');
                        disp('Turned Right');
                        brick.StopAllMotors('Coast');
                        %Move around the wall
                        brick.MoveMotor('A',45);
                        brick.MoveMotor('B',40);
                        pause(4);
                        brick.StopAllMotors('Coast');
                        
                     end
            end
    end
end

     
           