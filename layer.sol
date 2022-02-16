$file:layer.sol
$***********
begin
$
self_consistent wave_range=0.002
load_mesh mesh_inf=layer.msh
output sol_outf=layer.out
include file=layer.doping
include file=layer.mater


polarization_charge_model vector=(0 1 0)

init_wave length=1000 backg_loss=5000. &&
boundary_type=(2 2 1 1 )  init_wavel=0.3465 mirror_ref=0.30 &&
wavel_range=(0.335, 0.355) photon_fac=1.e10
$
$ solve for equilibrium
$
$newton_par damping_step=5. var_tol=1.e-9 res_tol=1.e-9 &&
$max_iter=100 opt_iter=15 stop_iter=50 print_flag=3 &&
$search_gainpeak=yes
newton_par damping_step=5. max_iter=100 print_flag=3
equilibrium
stop

end