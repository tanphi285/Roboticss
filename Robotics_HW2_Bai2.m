clc;
l1 = 4;
l2 = 3;
l3 = 1;
l4 = 5;
l5 = 4;
syms t4 t5 t6;
for t1=0:0.2:pi*2
    for t2=0:0.2:pi*2
         px = l4*cos(t1+t2)+l2*cos(t1);
         py = l4*sin(t1+t2)+l2*sin(t1);
         pz = l1+l3-l5;
         plot3(px,py,pz,'*');       
         hold on;
     end
end