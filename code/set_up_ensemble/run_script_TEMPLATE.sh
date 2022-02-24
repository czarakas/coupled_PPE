#!/bin/sh
#############################################################################################################################
#############################################################################################################################

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Define directories and user settings
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export CESM_CASE_NAME=TEMPLATE_CASENAME
export CESM_CASE_RES=f19_g17
export CESM_COMPSET=1850_CAM60_CLM50%BGC_CICE_POP2%ECO%ABIO-DIC_MOSART_CISM2%NOEVOLVE_WW3_BGC%BDRD
export PROJECT_NUM=UWAS0044

export CESM_SRC_DIR=TEMPLATE_SOURCECODE   #codebase to use to run CESM
export CESM_CASE_DIR=TEMPLATE_CASEDIR     #where to save case
export ARCHIVE_DIR=TEMPLATE_ARCHDIR       #where to save output
export RUN_DIR=TEMPLATE_RUNDIR  
export RESTART_DIR=/glade/scratch/czarakas/coupled_PPE/CMIP6_restarts/0401-01-01-00000 #where the restart files to use are

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Delete old case
# rm -rf ${CESM_CASE_DIR}/${CESM_CASE_NAME}

# Change to directory to make case
cd ${CESM_SRC_DIR}/cime/scripts

# Create new case
./create_newcase --case ${CESM_CASE_DIR}/${CESM_CASE_NAME} --res ${CESM_CASE_RES} --compset ${CESM_COMPSET} --project ${PROJECT_NUM} --run-unsupported

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Configure case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}

#+++ Set run to branch from spin up with default parameters
./xmlchange RUN_TYPE=hybrid
./xmlchange RUN_REFCASE=b.e21.B1850.f19_g17.CMIP6-piControl-2deg.001
./xmlchange RUN_REFDATE=0401-01-01

#+++ Modify xml files related to run time
#do these settings if this is a test run
./xmlchange STOP_OPTION="ndays"
./xmlchange STOP_N=4
./xmlchange RESUBMIT=0
./xmlchange JOB_WALLCLOCK_TIME=01:00:00 --subgroup case.run

# do these settings if running the whole thing
#./xmlchange STOP_OPTION="nyears"
#./xmlchange STOP_N=4
#./xmlchange RESUBMIT=0
#./xmlchange JOB_WALLCLOCK_TIME=10:30:00 --subgroup case.run

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Set up case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
./case.setup

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Modify namelists
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cp TEMPLATE_NAMELIST user_nl_clm

# Modify land namelist
cat >> user_nl_clm << EOF
!----------------------------------------------------------------------------------
! ---------------------------------INITIAL CONDITIONS------------------------------
! note that this means that our initial conditions will be from the CLM offline 1850 spin up for the PPE codebase. They will NOT be the land conditions from the fully coupled run which we are branching from


finidat='/glade/p/cgd/tss/people/oleson/CLM5_restarts/clm51_PPEn02ctsm51d021_2deg_GSWP3V1_leafbiomassesai_PPE3_1850pAD.clm2.r.2041-01-01-00000.nc'
use_init_interp = .true.

!----------------------------------------------------------------------------------
! ---------------------------------PARAMETER FILE----------------------------------
paramfile = TEMPLATE_PARAMFILE

!----------------------------------------------------------------------------------
!------------------------------HISTORY FILES--------------------------------------
!----History files (h0): monthly output at grid level
! (all the default output variables, except for the soil variables with vertically resolved soil levels)
! Variables we DON'T need to save 'CWDC_vr', 'CWDN_vr', 'LITR1C_vr', 'LITR1N_vr', 'LITR2C_vr', 'LITR2N_vr', 'LITR3C_vr', 'LITR3N_vr', 'SMIN_NH4_vr', 'SMIN_NO3_vr', 'SMINN_vr', 'SOIL1C_vr', 'SOIL1N_vr', 'SOIL2C_vr', 'SOIL2N_vr', 'SOIL3C_vr', 'SOIL3N_vr', 'SOILC_vr', 'SOILN_vr'
hist_nhtfrq(1)=0
hist_mfilt(1)=120

!----History files (h1): monthly output at grid level (less variables - the spin up that we will actually back up)
hist_fincl2 += 'TLAI','TSAI','HBOT','HTOP'                                                                       !Vegetation structure
hist_fincl2 += 'EFLX_LH_TOT','FIRA','FIRE','FLDS','FSA','FSDS','FSH_TO_COUPLER','FSR'                            !Surface energy budget
hist_fincl2 += 'GPP','NEE','NPP','ER','AR','GR','HR','MR','SR'                                                   !Carbon fluxes
hist_fincl2 += 'TOTCOLC','TOTCOLN','TOTECOSYSC','TOTECOSYSN','TOTSOMC','TOTSOMN','TOTVEGC','TOTVEGN'             !C and N pools
hist_fincl2 += 'RAIN_FROM_ATM','TBOT','QBOT','THBOT','TSA','TSKIN','TV','WIND','PBOT','PCO2','RH2M','SNOW_FROM_ATM' !Atmospheric forcing
hist_fincl2 += 'FSNO','DSTFLXT','DSTDEP','BTRAN2','QRUNOFF_TO_COUPLER','TWS'
hist_nhtfrq(2)=0
hist_mfilt(2)=120

!----History files (h2): monthly output at PFT level
hist_fincl3 += 'TLAI','TSAI','HBOT','HTOP','GPP'
hist_nhtfrq(3)=0
hist_mfilt(3)=120
hist_type1d_pertape(3) = 'PFTS'
hist_dov2xy(3)= .false.

!----History files (h3): daily output at grid level
!Daily surface energy budget
hist_fincl4 += 'EFLX_LH_TOT','FIRE','FLDS','FSDS','FSH_TO_COUPLER','FSR' 

!Variability in carbon fluxes
hist_fincl4 += 'GPP', 'NPP'

!Variability in atmospheric forcing
hist_fincl4 += 'QBOT','RAIN_FROM_ATM','TBOT','TSA','WIND'

!Plant water stress
hist_fincl4 += 'BTRAN2', 'BTRANMN', 'GSSHALN', 'GSSUNLN', 'H2OSOI', 'IWUELN', 'PARVEGLN', 'VEGWPLN', 'VEGWPPD','VPD_CAN','VPD2M','SMP','SOILWATER_10CM'

!ET partitioning
hist_fincl4 += 'FCEV', 'FCTR', 'FGEV' 

!Temperature extremes
hist_fincl4 += 'HIA', 'HIA_R', 'HIA_U', 'HUMIDEX', 'HUMIDEX_R', 'HUMIDEX_U', 'WBT', 'WBT_R', 'WBT_U', 'SWBGT', 'SWBGT_R', 'SWBGT_U','TREFMNAV','TREFMXAV'

!Hydrologic extremes
hist_fincl4 += 'QOVER', 'QRUNOFF'

hist_nhtfrq(4)=-24
hist_mfilt(4)=365

EOF

# Modify atmosphere namelist
cat >> user_nl_cam << EOF
!----History files (h0): monthly output (all the default output variables)
nhtfrq(1)=0
mfilt(1)=120

!----History files (h1): monthly output (less variables - the spin up that we will actually back up)
fincl2 = 'Q','QREFHT','QFLX','H2O','H2O_SRF',    'T','TSMN','TSMX','TREFHT','TS',      'LHFLX','SHFLX','FLNS','FSNS','FSDSC','FLNSC','FSNSC',       'FLNT','FSNTOA','FSNT','FLNTC','FSNTOAC','FSNTC','FLNTCLR','FLUTC',            'CLOUD','CLOUDFRAC_CLUBB','LWCF','SWCF','CLDTOT','CLOUDCOVER_CLUBB'
!nhtfrq(2)=-24 !use this for the short test case
nhtfrq(2)=0   !use this for actual spin up
mfilt(2)=120

!----History files (h2): daily output
fincl3 = 'TSMN','TSMX','PRECT'
nhtfrq(3)=-24
mfilt(3)=365

EOF

# Modify coupler namelist -- only uncomment this for DEFAULT simulations
#cat >> user_nl_cpl << EOF
#histaux_a2x3hr = .true.
#histaux_a2x3hrp = .true.
#histaux_a2x1hri = .true.
#histaux_a2x1hr = .true.
#histaux_a2x24hr = .true.
#histaux_a2x = .true.
#EOF

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Copy in restart files and build case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Copy resubmit files (from case we're branching from) into this case's run folder on glade
cd ${RUN_DIR}/${CESM_CASE_NAME}/run
cp $RESTART_DIR/* .

# Remove the clm restart because we want to use different initial conditions for land
# (based on finidat)
rm *.clm2.r.*

# Build the case
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
qcmd -A ${PROJECT_NUM} -- ./case.build

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Submit case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
#cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
#./case.submit
