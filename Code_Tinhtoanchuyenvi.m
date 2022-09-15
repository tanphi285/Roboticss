clc
syms l1 l2 l3 l4 l5 l6 t1 t2 t3 t4 t5 t6 x y z;

n = input('So luong he truc toa do: ');
T=eye(4);

for k=1:n
    fprintf('He truc so %d: \n',k)
    C(k)=input('Chuyen vi cua he truc la gi? (0: Tinh tien - 1: Quay): ');
    if C(k)==0
        dx=input('Dich chuyen theo truc x: ');
        dy=input('Dich chuyen theo truc y: ');
        dz=input('Dich chuyen theo truc z: ');
        A=[1 0 0 dx;0 1 0 dy;0 0 1 dz;0 0 0 1];
    elseif C(k)==1
        Q=input('Quay quanh truc nao? (x/y/z): ');
        t=input('Gia tri quay quanh truc: ');
        if Q==x
            A=[1 0 0 0;0 cos(t) -sin(t) 0;0 sin(t) cos(t) 0;0 0 0 1];
        elseif Q==y 
            A=[cos(t) 0 sin(t) 0;0 1 0 0;-sin(t) 0 cos(t) 0;0 0 0 1];
        elseif Q==z
            A=[cos(t) -sin(t) 0 0;sin(t) cos(t) 0 0;0 0 1 0;0 0 0 1];
        end
    end
    T=T*A;
end
simplify(T)
