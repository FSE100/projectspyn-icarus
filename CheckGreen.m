function CheckGreen()

color = brick.ColorCode(4);  % Get Color on port 1.
display(color);
if color==3
   ClawUp();
end
end