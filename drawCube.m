function drawCube(cubeIn,pellucidity,colorCube)
    if cubeIn.exist
        for k1 = 1:size(cubeIn.x,2)
            %   * EDGES : 3-elements vector that defines the length of cube edges
            %   * ORIGIN: 3-elements vector that defines the start point of the cube
            %   * ALPHA : scalar that defines the transparency of the cube faces (from 0
            %             to 1)
            %   * COLOR : 3-elements vector that defines the faces color of the cube
            edges = [cubeIn.length(k1) cubeIn.width(k1) cubeIn.height(k1)];
            origin = [cubeIn.x(k1) cubeIn.y(k1) cubeIn.z(k1)];
            plotcube(edges,origin,pellucidity,colorCube);
        end
    end
end


