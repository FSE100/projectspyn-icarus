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
    if color~=0 && color~=1 && color~=2 && color~=3 && color~=4
        disp('red');
         brick.StopAllMotors('Coast');
    end 
    if color==4
     disp("Yellow");
    end
    if color==4
    brick.StopAllMotors('Coast');  
    EnterManualMode(brick);
    end
    