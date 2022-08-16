function PathPlan = RRT(rStart,rLWH,goalPt)
%% RRT路径规划算法步骤（含避障）
    % 1-创建树根节点
    % 2-空间生成随机样点
    % 3-寻找最近叶子节点
    % 4-按步长扩展新节点
    % 5-不碰撞则加入树中

%% 变量定义
    % 1-迭代参数和属性
    iterMax = 5000;  %最大迭代次数
    iterCur = 0;     %当前迭代次数
    step = 5;        %步长
    count = 1;       %计数器
    Near = 10;        %阈值
    
    % 2-构建多叉树根节点
    Tr.x(1) = rStart(1);
    Tr.y(1) = rStart(2);
    Tr.z(1) = rStart(3);
    Tr.pre(1) = 0;

%% 迭代寻找路径点
    while iterCur < iterMax
        iterCur = iterCur + 1;
        
        % 1-空间生成随机采样点
        randCoor = RRTsamplePoint(rStart,rLWH,goalPt); % @可改进-方向引导
        % 2-寻找最近叶子节点
        [nearCoor,preIndex] = RRTfindNearNode(randCoor,Tr); % @可改进减少迭代数
        % 3-按步长扩展新节点
        newCoor = RRTexpandNode(nearCoor,randCoor,step); % @可改进-step
        % 4-碰撞检测
        
    end

end