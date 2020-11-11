function [p]=AzimuthalLineScan(image,radius,data_points)
%%%%% image in double format
%%%% radius 
%%% this is to get the gray values along a particular perimeter of radius r.
[A,B] = size(image);
%N=400;
angles=linspace(0,2*pi,data_points);
%r=200;
x0=round(A/2);y0=round(B/2);
x=radius*sin(angles)+x0;
y=radius*cos(angles)+y0;
X=round(x);Y=round(y);
p=zeros(1,data_points);k=1;
for m=1:data_points
        k0=X(m);
        l0=Y(m);
   p(k)=image(k0,l0);
   k=k+1;
end
fig=plot(p);fig(1).LineWidth = 2;
