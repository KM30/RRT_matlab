function randCoor = RRTsamplePoint(rStart,rLWH,goalPt)
    if rand < 0.5
        randX = rand*rLWH(1)+rStart(1);
        randY = rand*rLWH(2)+rStart(2);
        randZ = rand*rLWH(3)+rStart(3);
        randCoor = [randX randY randZ]; 
    else
        randCoor = goalPt;
    end
end

