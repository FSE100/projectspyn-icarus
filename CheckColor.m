function CheckColor()
color = brick.ColorCode(3);  % Get Color on port 1.

switch color

    case 2
    CheckObs();
    
    case 3
        ClawUp();
    case 4 
        ClawDown();
        EndDrive();
end
end