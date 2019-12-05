bumps=brick.TouchBumps(1);
while 1 
bump = brick.TouchBumps(1); % Get bumps on port 1
disp(bumps);  
disp(bump);% Print # of bumps to command window.

    if distance <= 15 && bump>bumps
     brick.beep(); 
     bumps=bump;
     brick.ResetMotorAngle('B'); 
     % Move another 90 degrees.
     brick.MoveMotorAngleRel('B', 20, 320, 'Brake'); 
     brick.WaitForMotor('B');
     disp('Turned left');
    end
     distance = brick.UltrasonicDist(4);
     disp(distance);
     if distance <= 15 && bump==bumps        
         disp(distance);
         brick.MoveMotor('A',40);
         brick.MoveMotor('B',40);
         pause(0.5);
         brick.StopAllMotors('Coast'); 
     end
end
