#! /bin/tcsh

set casename = OFFL0000_PI_v02 #COUP0037_PI_SOM_v02
set ensemble_type = coupled_simulations #offline_simulations #coupled_simulations

# Paths to relevant directories and files
set dir_modeloutput = /glade/campaign/cgd/tss/people/czarakas/CoupledPPE/$ensemble_type
set dir_postprocess = /glade/scratch/czarakas/cesm-postprocess

set timeseries_xml = /glade/u/home/czarakas/coupled_PPE/code/postprocess/cesm_postprocessing_tools/env_timeseries.xml

#--------------------------------------------------------------------------------
# Activate environment for running the postprocessing scripts
cesm_pp_activate

# Creates a postprocessing directory for the case (note this is where the postprocessing scripts live, NOT where the postprocessed output will end up
create_postprocess --caseroot $dir_postprocess/$casename --project P93300670

cd $dir_postprocess/$casename

# Tell the script where the model output to postprocess is
./pp_config --set DOUT_S_ROOT=$dir_modeloutput/$casename

# Tell the script what model resolution to expect
./pp_config --set ATM_GRID=1.9x2.5
./pp_config --set LND_GRID=1.9x2.5

# Specify that you don't want to postprocess everything, just the things you specify in the xml file
./pp_config --set TIMESERIES_GENERATE_ALL=FALSE

# Specify that you don't want to run all these other diagnostics which can stall out your script
./pp_config --set GENERATE_AVGS_ATM=FALSE
./pp_config --set GENERATE_DIAGS_ATM=FALSE
./pp_config --set GENERATE_AVGS_ICE=FALSE
./pp_config --set GENERATE_DIAGS_ICE=FALSE
./pp_config --set GENERATE_AVGS_LND=FALSE
./pp_config --set GENERATE_REGRID_LND=FALSE
./pp_config --set GENERATE_DIAGS_LND=FALSE
./pp_config --set GENERATE_AVGS_OCN=FALSE
./pp_config --set GENERATE_DIAGS_OCN=FALSE
./pp_config --set GENERATE_ILAMB=FALSE

# Copy in the custom timeseries xml settings (says which history streams to postprocess, among other things
cp $timeseries_xml .

# The default script requests and insane amount of computing time - this changes that so it's only using one core
sed -i -e 's/select=16:ncpus=9:mpiprocs=9/select=1:ncpus=36:mpiprocs=36/g' timeseries

# Submit the timeseries script
#qsub timeseries
