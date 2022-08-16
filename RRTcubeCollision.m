function cubeFlag = RRTcubeCollision()
%% 长方体碰撞检测函数，如果发生碰撞则返回1
    cubeFlag = 0;
    if cubeIn.exist
        for k1 = size(cubeIn.x,2)
            xMin = cubeIn.x(k1);
            xMax = cubeIn.x(k1) + cubeIn.length(k1);
            yMin = cubeIn.y(k1);
            yMax = cubeIn.y(k1) + cubeIn.width(k1);
            zMin = cubeIn.z(k1);
            zMax = cubeIn.z(k1) + cubeIn.height(k1);

            for k2 = 0:step/100:step
                deltaX = newCoor(1) - nearCoor(1);
                deltaY = newCoor(2) - nearCoor(2);
                deltaZ = newCoor(3) - nearCoor(3);
                r = sqrt(deltaX^2 + deltaY^2 + deltaZ^2);
                fai = atan2(deltaY,deltaX);
                theta = acos(deltaZ / r);
                x = k2 * sin(theta) * cos(fai);
                y = k2 * sin(theta) * sin(fai);
                z = k2 * cos(theta);

                checkPoint = [x + nearCoor(1),y + nearCoor(2),z + nearCoor(3)];

                if (xMin < checkPoint(1) && checkPoint(1) < xMax) && (yMin < checkPoint(2) && checkPoint(2) < yMax) && (zMin < checkPoint(3) && checkPoint(3) < zMax)
                    cubeFlag = 1;
                end
            end
        end
    end
end

