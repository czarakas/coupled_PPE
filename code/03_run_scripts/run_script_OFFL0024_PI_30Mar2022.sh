#!/bin/sh
#############################################################################################################################
#############################################################################################################################

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Define directories and user settings
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
export CESM_CASE_NAME=OFFL0024_PI_v02
export CESM_CASE_RES=f19_g17
export CESM_COMPSET=1850_DATM%CPLHIST_CLM50%BGC_SICE_SOCN_MOSART_CISM2%NOEVOLVE_SWAV
export PROJECT_NUM=UWAS0044
export BASECASE_NAME=OFFL0000_PI_CPLhist

export CESM_SRC_DIR=/glade/u/home/czarakas/cesm_source/cesm_coupled_PPEn11   #codebase to use to run CESM
export CESM_CASE_DIR=/glade/u/home/czarakas/cesm_cases/coupled_PPE     #where to save case
export ARCHIVE_DIR=/glade/scratch/czarakas/archive/       #where to save output
export RUN_DIR=/glade/scratch/czarakas
export FILENAME=/glade/u/home/czarakas/coupled_PPE/code/run_scripts/run_script_OFFL0024_PI_30Mar2022.sh
export RESTART_DIR=/glade/scratch/czarakas/archive/COUP0000_1850spinup_SOM_v02/rest/0049-01-01-00000 #where the restart files to use are


# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Make case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Delete old case
# rm -rf ${CESM_CASE_DIR}/${CESM_CASE_NAME}

# Change to directory to make case
cd ${CESM_SRC_DIR}/cime/scripts

# Create new case
./create_clone --case ${CESM_CASE_DIR}/${CESM_CASE_NAME} --clone ${CESM_CASE_DIR}/${BASECASE_NAME} --project ${PROJECT_NUM}
#./create_newcase --case ${CESM_CASE_DIR}/${CESM_CASE_NAME} --res ${CESM_CASE_RES} --compset ${CESM_COMPSET} --project ${PROJECT_NUM} --run-unsupported

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Configure case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}

# do these settings if running the whole thing
./xmlchange STOP_OPTION="nyears"
./xmlchange STOP_N=140
./xmlchange RESUBMIT=0
./xmlchange JOB_WALLCLOCK_TIME=11:50:00 --subgroup case.run

# Set datm forcing to be from CESM output
./xmlchange DATM_MODE="CPLHIST"
./xmlchange DATM_PRESAERO="cplhist"
./xmlchange DATM_TOPO="cplhist"
./xmlchange DATM_CPLHIST_DIR="/glade/scratch/czarakas/archive/COUP0000_PI_SOM/cpl/proc/"     
#(Note from Marysa: this is the path to the CPL output you're going to use to force your offline run)
./xmlchange DATM_CPLHIST_CASE="COUP0000_PI_SOM"
#CESM casename of the run you're using to force your offline run, ie the runname that is in all the files of CPL history output

./xmlchange DATM_CPLHIST_YR_ALIGN="49"
#(Note from Marysa: this doesn't have to be "1" - basically, if you have CPL hist output from year 0001-0050 and you actually want the years to line up properly, use "1". If you want there to be some offset (or if your CPL hist run started, say, in year 1850 instead of 0001, you might want to change this)

./xmlchange DATM_CPLHIST_YR_START="49"
#(Note from Marysa: The first year of coupler history output you want to use. E.g. if you were spinning up your coupled model for 20 years, you don't want to use those spinup years to force your offline model. Or maybe you do. But if you want to skip some years, this is where you tell it where to start)

./xmlchange DATM_CPLHIST_YR_END="188"
#(Note from Marysa: The last year of the coupler output you want to use. E.g. lets say you just want to loop years 21-24 over and over and over again, you'd set this to 24. It will loop from YR_START to YR_END repeatedly for the whole length of the run you tell it to go for, ie a 10 year run that you only hand 5 years of coupler output will loop over the coupler forcing files twice).

./xmlchange RUN_STARTDATE="0049-01-01"
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Set up case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
./case.setup
#./xmlchange DOUT_S=FALSE

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Modify namelists
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cp "/glade/scratch/djk2120/PPEn11/namelist_mods/OAAT0147.txt" user_nl_clm

# Modify land namelist
cat >> user_nl_clm << EOF
! ---------------------------------INITIAL CONDITIONS------------------------------
finidat='/glade/scratch/czarakas/archive/COUP0000_1850spinup_SOM_v02/rest/0049-01-01-00000/COUP0000_1850spinup_SOM_v02.clm2.r.0049-01-01-00000.nc'
use_init_interp = .true.

!----------------------------------------------------------------------------------
! ---------------------------------PARAMETER FILE----------------------------------
paramfile = "/glade/scratch/djk2120/PPEn11/paramfiles/OAAT0147.nc"

!----------------------------------------------------------------------------------
!------------------------------HISTORY FILES--------------------------------------
!----History files (h0): monthly output at grid level
! (all the default output variables, except for the soil variables with vertically resolved soil levels)
hist_fexcl1 = 'CWDC_vr', 'CWDN_vr', 'LITR1C_vr', 'LITR1N_vr', 'LITR2C_vr', 'LITR2N_vr', 'LITR3C_vr', 'LITR3N_vr', 'SMIN_NH4_vr', 'SMIN_NO3_vr', 'SMINN_vr', 'SOIL1C_vr', 'SOIL1N_vr', 'SOIL2C_vr', 'SOIL2N_vr', 'SOIL3C_vr', 'SOIL3N_vr', 'SOILC_vr', 'SOILN_vr'
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

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Build case and copy in resubmit files
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Copy this run script into the run directory
cp $FILENAME .

# Build the case
./xmlchange BUILD_COMPLETE=TRUE
./xmlchange EXEROOT=$RUN_DIR/$BASECASE_NAME"/bld"

#cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
#qcmd -A ${PROJECT_NUM} -- ./case.build

# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
# Submit case
# +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
cd ${CESM_CASE_DIR}/${CESM_CASE_NAME}
./case.submit
