; ====================================================
; how to run:
; >> module load ncl
; >> ncl swap_forcings.ncl
; ====================================================

ncks -x -v CH4_LBC LBC_2010climo_CMIP6_0p5degLat_c180227.nc LBC_2010_1850_hybrid.nc
ncks -A -v CH4_LBC LBC_1850climo_CMIP6_0p5degLat_c180227.nc LBC_2010_1850_hybrid.nc
ncks -A -v N2O_LBC LBC_1850climo_CMIP6_0p5degLat_c180227.nc LBC_2010_1850_hybrid.nc