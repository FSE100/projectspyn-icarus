global key
InitKeyboard();
turnedleft=false;
turnedright=false;

while 1
    pause(0.1)
    switch key
        case 'a'
          while 1
              distance=brick.UltrasonicDist(4);
                disp(distance);
                
            if(distance>=30)
                 brick.MoveMotor('AB',40);
                 pause(1);
                 brick.StopAllMotors('Coast');
            else
                if count==0 && turnedleft==false
                brick.ResetMotorAngle('A');
                brick.MoveMotorAngleAbs('A',20,-360,'Brake');
                brick.WaitForMotor('A');
                count=1;
                turnedleft=true;
                else
                    if count == 1 && turnedleft==true
                    brick.ResetMotorAngle('A');
                brick.MoveMotorAngleAbs('A',20,720,'Brake');
                brick.WaitForMotor('A');
                count=2; 
                    else 
                 brick.ResetMotorAngle('A');
                brick.MoveMotorAngleAbs('A',20,-360,'Brake');
                brick.WaitForMotor('A');
                count=1;
                turnedleft=true;
                    end
                    if count ==2 && turnedright==true
                      brick.ResetMotorAngle('A');
                brick.MoveMotorAngleAbs('A',20,360,'Brake');
                brick.WaitForMotor('A');
                count=0; 
               
                    end
                end
                
            end
          end
            
        case 'q'
                        brick.StopAllMotors('Coast');
                        break;
    end
end
CloseKeyboard();

a