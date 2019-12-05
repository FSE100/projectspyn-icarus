function MoveForward1Step(brick)
 
  brick.MoveMotor('A',39.25);
  brick.MoveMotor('B',40);
  pause(1);
  brick.StopAllMotors('Coast');
           % Motor A, B forward at half speed.
                                % Let the motors turn for 1 second.
  

end