brick.MoveMotor('A', 50);
brick.MoveMotor('B', 50);
pause(2);
brick.MoveMotor('A', -50);
brick.MoveMotor('B', -50);
pause(2);
brick.StopMotor('A');
brick.StopMotor('B');
