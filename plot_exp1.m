load('exp1_trans1.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'om')
hold on
% figure(2)
semilogy(V_base_src,I_base_meas,'m+')
hold on

load('exp1_trans2.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'or')
% figure(2)
semilogy(V_base_src,I_base_meas,'r+')

load('exp1_trans3.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'ob')
% figure(2)
semilogy(V_base_src,I_base_meas,'b+')

load('exp1_trans4.mat')
figure(1)
semilogy(V_base_src,-I_coll_calc,'ok')
% figure(2)
semilogy(V_base_src,I_base_meas,'k+')



leg=legend('Transistor 1: Collector','Transistor 1: Base','Transistor 2: Collector','Transistor 2: Base','Transistor 3: Collector','Transistor 3: Base','Transistor 4: Collector','Transistor 4: Base','location','best');
set(leg,'FontSize',12);
title('Base and Collector Currents of 4 Transistors','FontSize',14);
xlabel('Base Voltage (V)','FontSize',12)
ylabel('Base/Collector Current (I)','FontSize',12)