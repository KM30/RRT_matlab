function drawCylinder(cylinderIn,pellucidity,colorCylinder)
    if cylinderIn.exist
        %  ��һ��������Բ����ĵײ�Բ������ֵ���ڶ���������Բ����ֱ����������������Բ���߶�
        %  ���ĸ�������͸���ȣ��������������ɫ����
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

