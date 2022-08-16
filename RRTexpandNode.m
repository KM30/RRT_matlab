function newCoor = RRTexpandNode(nearCoor,randCoor,step)
    deltaX = randCoor(1) - nearCoor(1);
    deltaY = randCoor(2) - nearCoor(2);
    deltaZ = randCoor(3) - nearCoor(3);

    r = sqrt(deltaX^2+deltaY^2+deltaZ^2);
    fai = atan2(deltaY,deltaX);
    theta = acos(deltaZ/r);

    x = step*sin(theta)*cos(fai);
    y = step*sin(theta)*sin(fai);
    z = step*cos(theta);

    newCoor = [x+nearCoor(1) ,y+nearCoor(2),z+nearCoor(3)];
end

