function plotcylinder(coor,diameter,height,facealpha,color)

%% plot_cylinder(dat_xia(k2,1:3),dat_xia(k2,4),dat_xia(k2,5),1,rand(1,3));
%  ��һ��������Բ����ĵײ�Բ������ֵ���ڶ���������Բ����ֱ����������������Բ���߶�
%  ���ĸ�������͸���ȣ��������������ɫ����

%% �������ͣ�����������������䴦��ֻ��Ҫ��ס����������Ϳ��ԣ�֪���Ǹ�ʲô�ģ��ڲ�ʵ�ֹ��ڸ��ӣ����ѽ������

% coor:         ��������
% diameter:     ֱ��
% height:       �߶�
% facealpha:    ͸����
% color:        ��ɫ

r = diameter/2;
theta = 0:0.3:pi*2;
hold on

for k1 = 1:length(theta)-1
    X=[coor(1)+r*cos(theta(k1)) coor(1)+r*cos(theta(k1+1)) coor(1)+r*cos(theta(k1+1)) coor(1)+r*cos(theta(k1))];
    Y=[coor(2)+r*sin(theta(k1)) coor(2)+r*sin(theta(k1+1)) coor(2)+r*sin(theta(k1+1)) coor(2)+r*sin(theta(k1))];
    Z=[coor(3),coor(3),coor(3)+height,coor(3)+height];
    h=fill3(X,Y,Z,color);
    set(h,'edgealpha',0,'facealpha',facealpha)  
end

X=[coor(1)+r*cos(theta(end)) coor(1)+r*cos(theta(1)) coor(1)+r*cos(theta(1)) coor(1)+r*cos(theta(end))];
Y=[coor(2)+r*sin(theta(end)) coor(2)+r*sin(theta(1)) coor(2)+r*sin(theta(1)) coor(2)+r*sin(theta(end))];
Z=[coor(3),coor(3),coor(3)+height,coor(3)+height];
h=fill3(X,Y,Z,color);
set(h,'edgealpha',0,'facealpha',facealpha)


fill3(coor(1)+r*cos(theta),coor(2)+r*sin(theta),coor(3)*ones(1,size(theta,2)),color)
fill3(coor(1)+r*cos(theta),coor(2)+r*sin(theta),height+coor(3)*ones(1,size(theta,2)),color)
view(3)
 