clf
clear all
load exp3_sweepx_400kOHMS
loglog(I_x_src, I_z_meas,'bo')
hold on
I_z_exp = I_x_src .^ 2 ./ .5e-6;
loglog(I_x_src, I_z_exp,'b-','linewidth',2)

clear all
load exp3_sweepx_40kOHMS
loglog(I_x_src, I_z_meas,'ro')
hold on
I_z_exp = I_x_src .^ 2 ./ .5e-5;
loglog(I_x_src, I_z_exp,'r-','linewidth',2)

clear all
load exp3_sweepx_4kOHMS
loglog(I_x_src, I_z_meas,'go')
hold on
I_z_exp = I_x_src .^ 2 ./ .5e-4;
loglog(I_x_src, I_z_exp, 'g-','linewidth',2)

xlim([10^-7 max(I_x_src)])
legend('500 nA experimental','500 nA theoretical','5 uA experimental','5 uA theoretical','50 uA experimental','50 uA theoretical', 'location','northwest')
xlabel 'I_x (Amps)'
ylabel 'I_z (Amps)'
title('Translinear Circuit 2, Sweeping I_x', 'fontsize',20)
saveas(gcf, 'exp3_sweepx.png')