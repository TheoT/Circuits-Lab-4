%% Plot all collector and base currents on the same figure

load('exp1_trans1.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'om')
I_coll_1=I_coll_calc;
I_base_1=I_base_meas;
beta1=beta;
hold on
% figure(2)
semilogy(V_base_src,I_base_meas,'m+')
hold on

load('exp1_trans2.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'or')
% figure(2)
semilogy(V_base_src,I_base_meas,'r+')
I_coll_2=I_coll_calc;
I_base_2=I_base_meas;
beta2=beta;


load('exp1_trans3.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'ob')
% figure(2)
semilogy(V_base_src,I_base_meas,'b+')
I_coll_3=I_coll_calc;
I_base_3=I_base_meas;
beta3=beta;

load('exp1_trans4.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'ok')
% figure(2)
semilogy(V_base_src,I_base_meas,'k+')
I_coll_4=I_coll_calc;
I_base_4=I_base_meas;
beta4=beta;

% label
% leg=legend('Transistor 1: Collector','Transistor 1: Base','Transistor 2: Collector','Transistor 2: Base','Transistor 3: Collector','Transistor 3: Base','Transistor 4: Collector','Transistor 4: Base','location','best');
% set(leg,'FontSize',12);
% title('Base and Collector Currents of 4 Transistors','FontSize',14);
% xlabel('Base Voltage (V)','FontSize',12)
% ylabel('Base/Collector Current (I)','FontSize',12)
% drawgreygridlines()
%% Plot percent difference of collector currents

I_coll_mean=mean([[-I_coll_4];[-I_coll_3];[-I_coll_2];[-I_coll_1]]);
I_err1=((-I_coll_1-I_coll_mean))/I_coll_mean*100;
I_err2=((-I_coll_2-I_coll_mean))/I_coll_mean*100;
I_err3=((-I_coll_3-I_coll_mean))/I_coll_mean*100;
I_err4=((-I_coll_4-I_coll_mean))/I_coll_mean*100;

figure(4)
plot(V_base_src(1),I_err1(1),'m.')
hold on
plot(V_base_src(1),I_err2(1),'r.')
plot(V_base_src(1),I_err3(1),'b.')
plot(V_base_src(1),I_err4(1),'k.')
plot(V_base_src,I_err2,'r.',V_base_src, I_err1,'m.',V_base_src, I_err3,'b.',V_base_src, I_err4,'k.')

leg=legend('Transistor 1','Transistor 2','Transistor 3','Transistor 4','location','best');
% label
axis([.25 .65 -5 5])
set(leg,'FontSize',12);
title('Percent Difference of Collector Currents from Mean','FontSize', 14);
xlabel('Base Voltage (V)','FontSize', 12);
ylabel('Collector Current Error','FontSize', 12);
% drawgreygridlines();
%% plot beta as a function of V_base_src

figure(5)
semilogx(I_base_1,abs(beta1),'m.');
hold on
semilogx(I_base_2,abs(beta2),'r.');
semilogx(I_base_3,abs(beta3),'b.');
semilogx(I_base_4,abs(beta4),'k.');
title('$\beta$ as a Function of Base Current','FontSize', 14,'Interpreter','latex');
xlabel('Base Current (I)','FontSize', 12,'Interpreter','latex');
ylabel('$\beta$ ($\frac{I}{I}$)','FontSize', 12,'Interpreter','latex');
leg=legend('Transistor 1','Transistor 2','Transistor 3','Transistor 4','location','best')
set(leg,'FontSize',12);

% drawgreygridlines();