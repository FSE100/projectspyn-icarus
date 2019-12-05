global key
InitKeyboard();
 while 1
     switch key
         case 'a'
             while 1 
                  distance = brick.UltrasonicDist(4);
                  disp(distance);
                  if distance <= 15
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
                  end
                  
                  
                  if color==4
                    brick.StopAllMotors('Coast');
                  elseif color==3
                    brick.StopAllMotors('Coast');
                  end
                  
             end
             
         case 'q'
           brick.StopAllMotors('Coast');
           break;
           
     end
     
 end
 CloseKeyboard();
 
                     