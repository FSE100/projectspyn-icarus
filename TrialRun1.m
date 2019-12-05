distance = brick.UltrasonicDist(3);
color = brick.ColorCode(4);
COLLISION_DIS = 16.00;
MOVE_BLOCK_DIS = 0.0;
PASS_FLAG=0;

if color==2
 brick.MoveMotor('AB',20);
 pause(3);
 brick.StopAllMotors('Coast');

end
colorYellow=1;
 while true
  if distance <= COLLISION_DIS
     brick.StopAllMotors('Coast');
     brick.MoveMotorAngleAbs('A', 20, 360, 'Brake');
     brick.WaitForMotor('A'); % Wait for motor to complete motion

     if distance <= COLLISION_DIS % Turns left and moves forward
      brick.MoveMotorAngleAbs('B', 20, 360, 'Brake');
      brick.WaitForMotor('B'); % Wait for motor to complete motion

      if distance<=COLLISION_DIS   % Turns right and moves forward
        brick.MoveMotorAngleAbs('A', 20, 360, 'Brake');
        brick.WaitForMotor('A'); % Wait for motor to complete motion
        brick.MoveMotor('AB',-20);
        pause(2);
        
      else
        brick.MoveMotor('AB',20);
        pause(3);
        brick.StopAllMotors('Coast');
      end

    else
      brick.MoveMotor('AB',20);
      pause(3);
      brick.StopAllMotors('Coast');
    end
    else
      brick.MoveMotor('AB',20);
      pause(3);
      brick.StopAllMotors('Coast');
   end
    if color==3
      if PASS_FLAG==0
        brick.StopAllMotors('Coast');
        brick.ResetMotorAngle('C');
        brick.MoveMotorAngleAbs('C', 20, -90, 'Coast');
        pause(5);

        brick.MoveMotorAngleAbs('C', 20, 90, 'Coast');
        pause(5);
        PASS_FLAG=1;
      end
    end

    if color==4
     if PASS_FLAG==1
        brick.StopAllMotors('Coast');
        brick.ResetMotorAngle('C');
        brick.MoveMotorAngleAbs('C', 20, 90, 'Coast');
        pause(5);

        brick.MoveMotorAngleAbs('C', 20, -90, 'Coast');
        pause(5);
        colorYellow=0;
      end
    end
 end
  disp("destination reached");
