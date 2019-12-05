 count=0;
while 1 
    color = brick.ColorCode(3);  % Get Color on port 4.
    disp(color)
    distance = brick.UltrasonicDist(4);  % Get distance to the nearest object.
    if color==2
    disp("Blue");
    
    elseif color==3 
    disp("Green");
    
    elseif color==4
    disp("Yellow");
    end
    
    
    switch color
    case 0
        CheckObs(brick);
        
       
    case 2
        CheckObs(brick);
         
    case 4
        CheckObs(brick);
        
    case 3
        ClawDown(brick);
       
        break;
     end
end
