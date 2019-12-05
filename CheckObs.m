function  CheckObs(brick)
distance = brick.UltrasonicDist(4);
disp(distance);
turnedleft=false;
turnedright=false;
    while 1
        if distance>30
        MoveForward(brick);
        break;
    
        elseif distance<=30 && turnedleft==false
        TurnLeft(brick);
        turnedleft=true;
        break;
    
        elseif distance<=30 && turnedleft==true
        TurnRight(brick);
        TurnRight(brick);
        turnedleft=false;
        turnedright=true;
        break;
        
        elseif  distance<=30 && turnedright==true
           turnright();
           MoveForward1Step(brick);
           turnedright=false;
           turnedleft=false;

            break;
    
        end
    end
end

           
    