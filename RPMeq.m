clc
clear all

load MavericModelling.mat %loading the dataset%
voltage = MavericModelling.Voltage; %loading the variable with the voltage column%
RPM = MavericModelling.LoadedRPM; %loading the variable with RPM column%
p=polyfit(voltage,RPM,3); %to find the third degree polynomial that fits the data%
x2 = 0:.25:11.1;
y2 = polyval(p,x2);%apply polyval for minute numbers that might not have been in the dataset%
plot(voltage,RPM,'o',x2,y2); % plot to see the right fit%
grid on
s = sprintf('RPM = (%.1f) V^3 + (%.1f) V^2 + (%.1f) V + (%.1f)',p(1),p(2),p(3),p(4));
text(0.5,20000,s)


