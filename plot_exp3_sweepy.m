clf
clear all

load exp3_sweepy_100KOHM
loglog(-I_y_src, I_z_meas,'bo')
hold on
I_z_exp = (2.2e-5) .^ 2 ./ -I_y_src;  
loglog(-I_y_src, I_z_exp,'b-','linewidth',2)

clear all
load exp3_sweepy_200KOHM
loglog(-I_y_src, I_z_meas,'go')
hold on
I_z_exp = (1e-5) .^ 2 ./ -I_y_src;  %call it 25
loglog(-I_y_src, I_z_exp,'g-','linewidth',2)

clear all
load exp3_sweepy_2MOHM
loglog(-I_y_src, I_z_meas,'ko')
hold on
I_z_exp = (1e-6) .^ 2 ./ -I_y_src;  %call it 25
loglog(-I_y_src, I_z_exp,'k-','linewidth',2)

legend('22 uA experimental','22 uA theoretical','10 uA experimental','10 uA theoretical','100 uA experimental','100 uA theoretical', 'location','southwest')
xlabel 'I_y (Amps)'
ylabel 'I_z (Amps)'
title('Translinear Circuit 2, Sweeping I_y', 'fontsize',20)
saveas(gcf, 'exp3_sweepy.png')