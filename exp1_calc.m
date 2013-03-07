load('exp1_trans4.mat')
I_coll_calc=I_emt_meas-I_base_meas;
beta=-I_coll_calc./I_base_meas;
beta_mean=mean(beta(V_base_src>.43))
Is=I_coll_calc./exp(V_base_src./Ut);
Is_mean=mean(Is)
save('exp1_trans4.mat')
