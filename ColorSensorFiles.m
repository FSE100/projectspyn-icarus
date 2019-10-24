brick.SetColorMode(4, 2);  % Set Color Sensor connected to Port 1 to Color Code Mode

color = brick.ColorCode(4);  % Get Color on port 1.
display(color);                 % Print color code of object.