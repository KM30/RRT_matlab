function drawCylinder(cylinderIn,pellucidity,colorCylinder)
    if cylinderIn.exist
        %  第一个参数是圆柱体的底部圆心坐标值，第二个参数是圆柱体直径，第三个参数是圆柱高度
        %  第四个参数是透明度，第五个参数是颜色矩阵
        for k1 = 1:size(cylinderIn.x,2)
            coor = [cylinderIn.x(k1) cylinderIn.y(k1) cylinderIn.z(k1)];
            diameter = cylinderIn.radius(k1)*2;
            height = cylinderIn.height(k1);
            facealpha = pellucidity;
            color = colorCylinder;
            plotcylinder(coor,diameter,height,facealpha,color);
        end  
    end
end

