global key
InitKeyboard();

while 1
    pause (0.1);
    switch key
        case 'uparrow'
           brick.MoveMotor('AB',100);      % Motor A, B forward at half speed.
                                % Let the motors turn for 1 second.
            
            
         case 'downarrow'
           brick.MoveMotor('AB',-100);  
             
         
            

       
            
            
        case 'q'
           brick.StopAllMotors('Coast');

    end
end
CloseKeyboard();
