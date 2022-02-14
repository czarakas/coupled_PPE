#!/bin/sh
#############################################################################################################################
#############################################################################################################################

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Define directories and user settings
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export CESM_CASE_NAME=TEMPLATE_CASENAME
export CESM_CASE_RES=f19_g17
export CESM_COMPSET=2010_CAM60_CLM50%BGC_CICE_DOCN%SOM_SROF_SGLC_SWAV
export PROJECT_NUM=UWAS0044

export CESM_SRC_DIR=TEMPLATE_SOURCECODE   #codebase to use to run CESM
export CESM_CASE_DIR=TEMPLATE_CASEDIR     #where to save case
export ARCHIVE_DIR=TEMPLATE_ARCHDIR       #where to save output
export RUN_DIR=TEMPLATE_RUNDIR  
export RESTART_DIR=/glade/scratch/czarakas/archive/coupled_BGC_defParams_SpinUp_001/rest/0024-01-01-00000 #where the restart files to use are

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

./xmlchange RUN_TYPE=branch
./xmlchange RUN_REFCASE=coupled_BGC_defParams_SpinUp_001
./xmlchange RUN_REFDATE=0024-01-01 #change this!

#+++ Modify xml files
./xmlchange STOP_OPTION="nyears" #"ndays"
./xmlchange STOP_N=4
./xmlchange RESUBMIT=0
./xmlchange DOCN_SOM_FILENAME="pop_frc.b.e21.BW1850.f09_g17.CMIP6-piControl.001.190514.nc"
./xmlchange JOB_WALLCLOCK_TIME=10:30:00 --subgroup case.run

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Set up case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
./case.setup

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Modify namelists
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Modify land namelist
cat >> user_nl_clm << EOF
! ---------------------------------INITIAL CONDITIONS------------------------------
! no finidat because branching from spin up (will use those initial conditions)

! Default parameter file used in PPE
paramfile = TEMPLATE_PARAMFILE

!----------------------------------------------------------------------------------
!------------------------------HISTORY FILES--------------------------------------
!----History files (h0): monthly output (all the default output variables)
hist_nhtfrq(1)=0
hist_mfilt(1)=120

!----History files (h1): monthly output (less variables - the spin up that we will actually back up)
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

!----History files (h3): daily output
hist_fincl4 += 'GSSHALN','GSSUNLN','GPP'


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
#histaux_a2x3hr=.true.
#histaux_a2x3hrp = .true.
#histaux_a2x1hri = .true.
#histaux_a2x1hr = .true.
#histaux_a2x24hr = .true.
#histaux_a2x = .true.
#EOF

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Build case and copy in resubmit files
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

# Build the case
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
qcmd -A ${PROJECT_NUM} -- ./case.build

# Copy resubmit files in
cd ${RUN_DIR}/${CESM_CASE_NAME}/run
cp $RESTART_DIR/* .

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Submit case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
./case.submit
