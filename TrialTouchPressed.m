touch = brick.TouchPressed(1); % Read a touch sensor connected to port 1.
             
         %if the touch sensor is pressed, which means there's a wall in the
         %front
         if touch==true
            brick.beep();  
         end
         