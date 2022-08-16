%% ��չ������������д���
    clear;  %�ӹ�������ɾ����Ŀ���ͷ�ϵͳ�ڴ�
    clc;    %��������д���

%% �������
% 1-�����˶��ռ�
    rStart = [0 0 0];
    rLWH = [1000 1000 1000];

% 2-�����ϰ���
    cubeIn.exist = 0;
    cylinderIn.exist = 0;
    sphereIn.exist = 0;

% 3-����һϵ�е�·����
    pathPt = [0 0 0; 1000 1000 1000]; % @�ɸĽ�

% 4-�����ϰ���
    cubeIn = creCube(cubeIn); %�����������ϰ���
    cylinderIn = creCylinder(cylinderIn); %����Բ�����ϰ���
    sphereIn = creSphere(sphereIn); %���������ϰ���

%% ����̬�Ĺ����ռ�ͼ
    figure(1); %������ͼ����
    hold on;   %��֤����ͼ��һ��ͼ��

% 1-�ڴ�����չʾ��ʼ��
    scatter3(pathPt(1,1),pathPt(1,2),pathPt(1,3),'MarkerEdgeColor','k','MarkerFaceColor',[1 0 0]);
    scatter3(pathPt(end,1),pathPt(end,2),pathPt(end,3),'MarkerEdgeColor','k','MarkerFaceColor','b');
    text(pathPt(1,1),pathPt(1,2),pathPt(1,3),'���');
    text(pathPt(end,1),pathPt(end,2),pathPt(end,3),'�յ�');

% 2-�ڴ�����չʾ�ϰ���
    colorCube = [1 0 0];
    colorCylinder = [0 1 0];
    colorSphere = [0 0 1];
    pellucidity = 0.6; %͸����

    drawCube(cubeIn,pellucidity,colorCube);
    drawCylinder(cylinderIn,pellucidity,colorCylinder);
    drawSphere(sphereIn,pellucidity,colorSphere);

% 3-�ڴ�����չʾ����ϵ�����Ժ���Ϣ
    view(3);    %�ڴ�����չʾ��ά
    grid on;    %�ڴ�����չʾ����
    axis equal; %��֤չʾʱ�����᳤��һ��
    axis([rStart(1) rLWH(1) rStart(2) rLWH(2) rStart(3) rLWH(3)]);

    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('RRT Algorithm');

%% ���Ѿ�Ѱ�ҵ���RRT�㷨·��
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