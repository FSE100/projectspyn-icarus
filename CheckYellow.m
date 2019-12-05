function CheckYellow()

color = brick.ColorCode(4);  % Get Color on port 1.
display(color);
if color==4
   ClawDown();
   flag=1;
end
end