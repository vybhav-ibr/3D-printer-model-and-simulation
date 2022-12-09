px=2;py=2;pz=2;
figure;
h = plot3(0,0,0);
p = get(h,'Parent');
xlim(p,'manual');
xlim(p,[-3 3]);
ylim(p,'manual');
ylim(p,[-3 3]);
zlim(p,'manual');
zlim(p,[0 3]);
axis vis3d;
grid on;
frame1=line([0,0],[-3,-3],[-3,2.5],'lineWidth',5);
frame2=line([0,0],[3,3],[-3,2.5],'lineWidth',5);
frame3=line([0,0],[-3,3],[2.45,2.45],'lineWidth',5);
req=line([0,0],[0,0],[2.5,1.5],'color','r','lineWidth',5);
delete(req);
up_down=line([0,0],[-3,3],[2.45,2.45],'lineWidth',5,'color','g');
ext=line([0,0],[0,0],[0,0],'color','r','lineWidth',5);

%{
base_plate1=rectangle('Position',[-2,-2,2,2],'FaceColor',[0 0 0]);
base_plate2=rectangle('Position',[-2,0,2,2],'FaceColor',[0 0 0]);
base_plate3=rectangle('Position',[0,0,2,2],'FaceColor',[0 0 0]);
base_plate4=rectangle('Position',[0,-2,2,2],'FaceColor',[0 0 0]);
%}

base_plate5=rectangle('Position',[-3,-2,2,2],'FaceColor',[0 0 0]);
base_plate6=rectangle('Position',[-3,0,2,2],'FaceColor',[0 0 0]);
pause(.5);
delete(base_plate5);
delete(base_plate6);

base_plate1=rectangle('Position',[-2,-2,2,2],'FaceColor',[0 0 0]);
base_plate2=rectangle('Position',[-2,0,2,2],'FaceColor',[0 0 0]);
base_plate3=rectangle('Position',[0,0,2,2],'FaceColor',[0 0 0]);
base_plate4=rectangle('Position',[0,-2,2,2],'FaceColor',[0 0 0]);

%l1=line([0,px],[0,py],[0,0]);
delete(req);
j=2.5;
for i =-3:0.1:3
        %set(req,'YData',[i,i]);
        if(i<=0)
            %set(req,'ZData',[2.5,j]);
            set(up_down,'ZData',[j,j]);
            set(ext,'ZData',[j,j-.2],'YData',[i,i]);
            j=j-.07280;
        else
            %set(req,'ZData',[2.5,j]);
            set(up_down,'ZData',[j,j]);
            set(ext,'ZData',[j,j-.2],'YData',[i,i]);
            j=j+.07280;
        end
    pause(0.1);
end

delete(base_plate1);
delete(base_plate2);

base_plate7=rectangle('Position',[1,0,2,2],'FaceColor',[0 0 0]);
base_plate8=rectangle('Position',[1,-2,2,2],'FaceColor',[0 0 0]);
pause(.5);
delete(base_plate7);
delete(base_plate8);

base_plate1=rectangle('Position',[-2,-2,2,2],'FaceColor',[0 0 0]);
base_plate2=rectangle('Position',[-2,0,2,2],'FaceColor',[0 0 0]);

%(
set(ext,'YData',[0,0]);
%{
for j=2.5:-0.1:0
           
           pause(0.1);
           continue
end
%}
