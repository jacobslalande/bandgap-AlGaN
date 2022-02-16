begin_pstprc
$plot_data plot_device=pdf
plot_data plot_device=pdf
get_data  main_input=layer.sol sol_inf=layer.out &&
xy_data=(1 1)
plot_1d variable=band from=(0.5 0.) to=(0.5, 1)
plot_1d variable=band from=(0.5 0.5) to=(0.5, 0.65)
$plot_1d variable=potential from=(0.5 0.5) to=(0.5, 2.4)
plot_1d variable=elec_conc from=(0.5 0.05) to=(0.5, 1)
plot_1d variable=hole_conc from=(0.5 0.) to=(0.5, 2.4)
$plot_1d variable=trap_conc from=(0.5 0.) to=(0.5, 2.4)
plot_1d variable=all_conc from=(0.5 0.) to=(0.5, 2.4)
$plot_1d variable=band from=(0.5 0.) to=(0.5, 2.4)
$plot_1d variable=piezo_vector from=(0.5 0.) to=(0.5, 2.4)
$plot_1d variable=piezo_vector_external from=(0.5 0.) to=(0.5, 2.4)
plot_1d variable=polar_vector from=(0.5 0.) to=(0.5, 2.4)



plot_1d 3_variables=(band elec_conc hole_conc) var_num=3 &&
from=(0.5 0.) to=(0.5, 2.4)
end_pstprc