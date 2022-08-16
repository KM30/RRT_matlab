%% 清空工作区和命令行窗口
    clear;  %从工作区中删除项目、释放系统内存
    clc;    %清空命令行窗口

%% 定义变量
% 1-定义运动空间
    rStart = [0 0 0];
    rLWH = [1000 1000 1000];

% 2-定义障碍物
    cubeIn.exist = 0;
    cylinderIn.exist = 0;
    sphereIn.exist = 0;

% 3-定义一系列的路径点
    pathPt = [0 0 0; 1000 1000 1000]; % @可改进

% 4-创建障碍物
    cubeIn = creCube(cubeIn); %创建长方体障碍物
    cylinderIn = creCylinder(cylinderIn); %创建圆柱体障碍物
    sphereIn = creSphere(sphereIn); %创建球体障碍物

%% 画静态的工作空间图
    figure(1); %创建画图窗口
    hold on;   %保证画的图在一张图上

% 1-在窗口中展示起始点
    scatter3(pathPt(1,1),pathPt(1,2),pathPt(1,3),'MarkerEdgeColor','k','MarkerFaceColor',[1 0 0]);
    scatter3(pathPt(end,1),pathPt(end,2),pathPt(end,3),'MarkerEdgeColor','k','MarkerFaceColor','b');
    text(pathPt(1,1),pathPt(1,2),pathPt(1,3),'起点');
    text(pathPt(end,1),pathPt(end,2),pathPt(end,3),'终点');

% 2-在窗口中展示障碍物
    colorCube = [1 0 0];
    colorCylinder = [0 1 0];
    colorSphere = [0 0 1];
    pellucidity = 0.6; %透明度

    drawCube(cubeIn,pellucidity,colorCube);
    drawCylinder(cylinderIn,pellucidity,colorCylinder);
    drawSphere(sphereIn,pellucidity,colorSphere);

% 3-在窗口中展示坐标系的属性和信息
    view(3);    %在窗口中展示三维
    grid on;    %在窗口中展示网格
    axis equal; %保证展示时坐标轴长度一致
    axis([rStart(1) rLWH(1) rStart(2) rLWH(2) rStart(3) rLWH(3)]);

    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('RRT Algorithm');

%% 画已经寻找到的RRT算法路径
    totalPath = [];
    for p1 = 1:size(pathPt,1) - 1
        startPt = pathPt(p1,:);
        goalPt = pathPt(p1 + 1,:);
        PathPlan = RRT(rStart,rLWH,goalPt);
        if ~isempty(PathPlan)
            for p2 = 1:size(PathPlan,1) - 1
                line([PathPlan(p2,1) PathPlan(p2+1,1)],[PathPlan(p2,2) PathPlan(p2+1,2)],[PathPlan(p2,3) PathPlan(p2+1,3)],'LineWidth',1,'Color','red');
            end
            totalPath = [totalPath;PathPlan];
        end
    end