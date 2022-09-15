clc;
l1 = 4;
l2 = 2;
l3 = 7;
l4 = 2;
l5 = 3;
syms t4 t5 t6;
for t4=0:0.4:pi*2
    for t5=0:0.4:pi
        for t6=0:0.4:pi*2
            px = l3+l4+l5*cos(t5)*cos(t6);
            py = l2+l5*(cos(t4)*sin(t6)+cos(t6)*sin(t4)*sin(t5));
            pz = l2+l5*(sin(t4)*sin(t6)-cos(t4)*cos(t6)*sin(t5));
            plot3(px,py,pz,'*');
            hold on;
        end
    end
end