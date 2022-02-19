clear;

data = dlmread('textfields/time_40', ' ', 2, 0);

x = data(:,1);
z = data(:,3);
alpha = data(:,7);

F = scatteredInterpolant(x,z,alpha);

[X,Z]=meshgrid(min(x):0.01:max(x),min(z):0.01:max(z));
ALPHA = F(X,Z);

figure

contourf(X, Z, ALPHA, LineStyle="none")
colorbar
