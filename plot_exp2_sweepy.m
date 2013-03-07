clf
clear all

load exp2_sweepy_2MOHM
loglog(-I_y_src, I_z_meas, 'ko')
hold on
I_z_exp = sqrt(1e-6 * -I_y_src);
loglog(-I_y_src, I_z_exp, 'k-','linewidth',2)

load exp2_sweepy_200kOHM
loglog(-I_y_src, I_z_meas,'bo')
I_z_exp = sqrt(1e-5 * -I_y_src);
loglog(-I_y_src, I_z_exp, 'b-','linewidth',2)

clear all
load exp2_sweepy_20kOHM
loglog(-I_y_src, I_z_meas,'ro')
I_z_exp = sqrt(1e-4 * -I_y_src);
loglog(-I_y_src, I_z_exp, 'r-','linewidth',2)


legend('1 uA experimental','1 uA theoretical','10 uA experimental','10uA theoretical','100 uA experimental','100 uA theoretical', 'location','best')
xlabel 'I_y (Amps)'
ylabel 'I_z (Amps)'
title('Translinear Circuit 1, Sweeping I_y', 'fontsize',20)
saveas(gcf, 'exp2_sweepy.png')


