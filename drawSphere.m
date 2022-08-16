function drawSphere(sphereIn,pellucidity,colorSphere)
    if sphereIn.exist
        for k1 = 1:size(sphereIn.x,2)
            xCoor = sphereIn.x(k1);
            yCoor = sphereIn.y(k1);
            zCoor = sphereIn.z(k1);
            radius = sphereIn.radius(k1);

            [x,y,z] = sphere(50);
            mesh(x*radius+xCoor,y*radius+yCoor,z*radius+zCoor,'FaceColor',colorSphere,'EdgeColor','none','FaceAlpha',pellucidity);
        end
    end
end

