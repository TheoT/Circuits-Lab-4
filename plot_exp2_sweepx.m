clf
%experimental
load exp2_sweepx_390OHM
loglog(I_x_src, I_z_meas,'bo')
hold on
I_z_exp = sqrt(1e-3 * I_x_src);
loglog(I_x_src, I_z_exp, 'b-','linewidth',2)

hold on

clear all
load exp2_sweepx_3pt9kOHM
loglog(I_x_src, I_z_meas,'ro')
I_z_exp = sqrt(1e-4 * I_x_src);
loglog(I_x_src, I_z_exp, 'r-','linewidth',2)

clear all
load exp2_sweepx_39kOHM
loglog(I_x_src, I_z_meas, 'ko')
I_z_exp = sqrt(1e-5 * I_x_src);
loglog(I_x_src, I_z_exp, 'k-','linewidth',2)

legend('1 mA experimental','1 mA theoretical','100 uA experimental','100uA theoretical','10 uA experimental','10 uA theoretical', 'location','best')
xlabel 'I_x (Amps)'
ylabel 'I_z (Amps)'
title('Translinear Circuit 1, Sweeping I_x', 'fontsize',20)
saveas(gcf, 'exp2_sweepx.png')