%% Problem 6

%% Problem 7 

M = [1, 5; -1, -1];
J = jordan(M)

%% Problem 9 

[x1,x2] = meshgrid(-10:0.2:10,-10:0.2:10);

x1d = x2;
x2d = x1 - 2*atan(x1+x2);

figure 
streamslice(x1,x2,x1d,x2d)
xlabel('x_1')
ylabel('x_2')
xlim([-10 10])
ylim([-10 10])
box on 
grid on 

%% Problem 10

%% Problem 22

CA0 = 1;
CB0 = 0;
CC0 = 0;
k1 = 2;
k2 = 1;

A = [-k1, 0, 0;
      k1, -k2, 0;
      0, k2, 0];
B = zeros(3);
C = [1, 0, 0];
D = zeros(1,3);

x0 = [CA0; CB0; CC0];

sys = ss(A,[],C,[])
[y,t,x] = initial(sys,x0);

close all
figure
plot(t,x,'linewidth',1)
title('Problem 22: Chemical Reaction Model')
xlabel('Time')
ylabel('Concentration')
legend('C_A','C_B','C_C')
saveas(gca, 'HW1_P22.png')