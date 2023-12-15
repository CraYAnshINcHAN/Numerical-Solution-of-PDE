function h=Project2_LF(a) 
h = 0.1;tau = 0.01;lamda = tau/h;
xmin = 0;tmax = 4;xmax = a*tmax+6;
tn = (tmax-0)/tau+1;
u = zeros(tn,(xmax-xmin)/h+tn+1);
v = zeros(tn,(xmax-xmin)/h+1);
for i = 1:((0-xmin)/h+tn)
    u(1,i) = 1;
end
for i = ((0-xmin)/h+1+tn):((xmax-xmin)/h+tn+1)
    u(1,i) = 0;
end
for t = 1:tn
    for i = (t+1):((xmax-xmin)/h+tn)
        u(t+1,i) = 1/2*(u(t,i+1)+u(t,i-1))-1/2*a*lamda*(u(t,i+1)-u(t,i-1));
    end
end
for i = 1:((xmax-xmin)/h+1)
    for t = 1:tn
        v(t,i) = u(t,i+tn-1);
    end
end
% [M,N]=size(v);
% x=xmin:h:xmax;
% y=0:tau:tmax;
% [X,Y]=meshgrid(x,y);
% mesh(X,Y,v);
% shading interp;
m = zeros(1,(xmax-xmin)/h+1);
n = zeros(1,(xmax-xmin)/h+1);
for x=1:((xmax-xmin)/h+1)
    m(x)=v(tn,x);
    n(x)=(x-1)*h+xmin;
end
c=[0 tmax*a tmax*a xmax];
d=[1 1 0 0];
plot(n,m,'-o','MarkerSize',3,color='blue', linewidth=1);
title(['a=',num2str(a),'-Lax-Friedrichs格式'])
hold on
plot(c,d,'r-', linewidth=1)
hold on