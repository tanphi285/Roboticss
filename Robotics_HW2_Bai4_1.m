clc;
l1 = 8;
l2 = 7;
l3 = 1;
l4 = 8;
l5 = 6;
syms t1 t2;
for t1=0:0.1:pi*2
    for t2=0:0.1:pi*2
            px = l2*cos(t1)-l3*sin(t1)+l4*cos(t1)*cos(t2)+l5*cos(t1)*sin(t2);
            py = l3*cos(t1)+l2*sin(t1)+l4*cos(t2)*sin(t1)+l5*sin(t1)*sin(t2);
            pz = l1+l5*cos(t2)-l4*sin(t2);
            plot3(px,py,pz,'*');
            hold on;
        end
end