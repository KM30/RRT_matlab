function [nearCoor,preIndex] = RRTfindNearNode(randCoor,Tr)
    tempDis = inf;
    calcuDis = @(x,y) sqrt((x(1)-y(1))^2+(x(2)-y(2))^2+(x(3)-y(3))^2);

    for k1 = 1:size(Tr.x,2)
        dis = calcuDis([Tr.x(k1) Tr.y(k1) Tr.z(k1)],randCoor);
        if tempDis > dis
            tempDis = dis;
            index = k1;
        end    
    end

    nearCoor = [Tr.x(index) Tr.y(index) Tr.z(index)];
    preIndex = index;
end

