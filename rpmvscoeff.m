clc
clear all

load rpmvscoeff.mat
rpm=rpmvscoeff1.RPM;
ct=rpmvscoeff1.CoeffecientofThrust;
q=polyfit(rpm,ct,3);
x2=6000:50:38000;
y2=polyval(q,x2);
plot(rpm,ct,'o',x2,y2);
grid on
s = sprintf('ct = (%.1f) RPM^3 + (%.1f) RPM^2 + (%.1f) RPM + (%.1f)',q(1),q(2),q(3),q(4));


