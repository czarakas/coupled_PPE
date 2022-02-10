#!/bin/sh
#############################################################################################################################

#############################################################################################################################

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Define directories and user settings
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export CESM_CASE_NAME=spinup_test006 #coupled_BGC_defParams_SpinUp
export CESM_CASE_RES=f19_g17
export CESM_COMPSET=2010_CAM60_CLM50%BGC_CICE_DOCN%SOM_SROF_SGLC_SWAV
export PROJECT_NUM=UWAS0044

export CESM_SRC_DIR=/glade/u/home/czarakas/cesm_source/cesm_coupled_PPE   #codebase to use to run CESM
export CESM_CASE_DIR=/glade/u/home/czarakas/cesm_cases/coupled_PPE #where to save case
export ARCHIVE_DIR=/glade/scratch/czarakas/archive/ #where to save output

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make and configure case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Change to directory to make case
cd ${CESM_SRC_DIR}/cime/scripts

# Create new case
./create_newcase --case ${CESM_CASE_DIR}/${CESM_CASE_NAME} --res ${CESM_CASE_RES} --compset ${CESM_COMPSET} --project ${PROJECT_NUM} --run-unsupported

#+++ Configure case
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}

#+++ Modify xml files
./xmlchange STOP_OPTION="ndays"
./xmlchange STOP_N=3
./xmlchange RESUBMIT=0
./xmlchange DOCN_SOM_FILENAME="pop_frc.b.e21.BW1850.f09_g17.CMIP6-piControl.001.190514.nc"
./xmlchange JOB_WALLCLOCK_TIME=00:30:00 --subgroup case.run

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# set up and compile case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Set up case
./case.setup

# Change run settings
#./xmlchange CCSM_CO2_PPMV=388.72    # from Meinshausen et al. 2017
#./xmlchange CLM_CO2_TYPE="constant"

# Modify namelists
cat >> user_nl_clm << EOF
! ---------------------------------INITIAL CONDITIONS------------------------------
finidat ="/glade/p/cgd/tss/people/oleson/CLM5_restarts/clm51_PPEn02ctsm51d021_2deg_GSWP3V1_leafbiomassesai_PPE3_hist.clm2.r.2005-01-01-00000.nc"
use_init_interp = .true.

! Default parameter file used in PPE
paramfile = "/glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210217_kwo.c210222.nc"

!----------------------------------------------------------------------------------
!------------------------------HISTORY FILES--------------------------------------
!----History files (h0): monthly output (all the default output variables)

!----History files (h1): monthly output (less variables - the spin up that we will actually back up)
hist_fincl2 += 'TLAI','TSAI','HBOT','HTOP'                                                                       !Vegetation structure
hist_fincl2 += 'EFLX_LH_TOT','FIRA','FIRE','FLDS','FSA','FSDS','FSH_TO_COUPLER','FSR'                            !Surface energy budget
hist_fincl2 += 'GPP','NEE','NPP','ER','AR','GR','HR','MR','SR'                                                   !Carbon fluxes
hist_fincl2 += 'TOTCOLC','TOTCOLN','TOTECOSYSC','TOTECOSYSN','TOTSOMC','TOTSOMN','TOTVEGC','TOTVEGN'             !C and N pools
hist_fincl2 += 'RAIN_FROM_ATM','TBOT','QBOT','THBOT','TSA','TSKIN','TV','WIND','PBOT','PCO2','RH2M','SNOW_FROM_ATM' !Atmospheric forcing
hist_fincl2 += 'FSNO','DSTFLXT','DSTDEP','BTRAN2','QRUNOFF_TO_COUPLER','TWS'


hist_nhtfrq = -24, -24        !use this for short test case
!hist_nhtfrq = 0,0              !use this for actual spin up
hist_mfilt=120,120

EOF

cat >> user_nl_cam << EOF
fincl2 = 'Q','QREFHT','QFLX','H2O','H2O_SRF',    'T','TSMN','TSMX','TREFHT','TS',      'LHFLX','SHFLX','FLNS','FSNS','FSDSC','FLNSC','FSNSC',       'FLNT','FSNTOA','FSNT','FLNTC','FSNTOAC','FSNTC','FLNTCLR','FLUTC',            'CLOUD','CLOUDFRAC_CLUBB','LWCF','SWCF','CLDTOT','CLOUDCOVER_CLUBB'
nhtfrq(2)=-24

EOF

# Build the case
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
qcmd -A ${PROJECT_NUM} -- ./case.build

# Submit the case
./case.submit
