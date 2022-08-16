function PathPlan = RRT(rStart,rLWH,goalPt)
%% RRT·���滮�㷨���裨�����ϣ�
    % 1-���������ڵ�
    % 2-�ռ������������
    % 3-Ѱ�����Ҷ�ӽڵ�
    % 4-��������չ�½ڵ�
    % 5-����ײ���������

%% ��������
    % 1-��������������
    iterMax = 5000;  %����������
    iterCur = 0;     %��ǰ��������
    step = 5;        %����
    count = 1;       %������
    Near = 10;        %��ֵ
    
    % 2-������������ڵ�
    Tr.x(1) = rStart(1);
    Tr.y(1) = rStart(2);
    Tr.z(1) = rStart(3);
    Tr.pre(1) = 0;

%% ����Ѱ��·����
    while iterCur < iterMax
        iterCur = iterCur + 1;
        
        % 1-�ռ��������������
        randCoor = RRTsamplePoint(rStart,rLWH,goalPt); % @�ɸĽ�-��������
        % 2-Ѱ�����Ҷ�ӽڵ�
        [nearCoor,preIndex] = RRTfindNearNode(randCoor,Tr); % @�ɸĽ����ٵ�����
        % 3-��������չ�½ڵ�
        newCoor = RRTexpandNode(nearCoor,randCoor,step); % @�ɸĽ�-step
        % 4-��ײ���
        
    end

end