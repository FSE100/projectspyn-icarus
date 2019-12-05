switch count
    case 0 
        distance = brick.UltrasonicDist(4);
        disp(distance);
        if distance<30         
         TurnLeft(brick);
         result = 1;
        else 
         MoveForward(brick);
         result=0;
        
        end
    case 1
        distance = brick.UltrasonicDist(4);
        if distance<30         
         TurnRight(brick);
         result = 2;
        else 
         MoveForward(brick);
         result=0;
        end
        
    case 2
        distance = brick.UltrasonicDist(4);
        if distance<30         
         TurnAround(brick);
         MoveForward1Step(brick);
         TurnLeft(brick);
         result = 0;
        else 
         MoveForward(brick);
         result=0;
        end

end