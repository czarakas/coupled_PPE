#! /bin/tcsh

module load nco
module load ncl

# Script which makes means and time series of CESM model output
# Script originally made by Marysa Lague 2017.04.04
# Edited by Claire Zarakas 2021.09.15
# submit with:
# >> qcmd -l walltime=1:00:00 -A UWAS0044 —- ./process_output_to_timeseries.csh
# >> qsub -l walltime=1:00:00 -A UWAS0044 —- ./process_output_to_timeseries.csh
#------------------------------------------------------------------------
# This is the name of the cases we'll make means/time series of
set caselist = (COUP0000_PI_SOM) #OFFL0000_PI_v02 OFFL0001_PI_v02 )


# List the variables which you want to make time series of here (for now, I'm just doing a handfull).
set atm_vars_monthly = (PRECC PRECL TS TSA) #CLOUD CLDICE CLDLIQ FSNTOA FSUTOA T RELHUM Q U V OMEGA SNOWHICE SNOWHLND QRL QRS VT LANDFRAC OCNFRAC SNOWQM IWC PHIS H2O_SRF)#U10 AODDUST AODVIS FSNTOAC FLNTCLR PSL SOLIN PS CDNUMC TMQ H2O2_SRF FREQCLR DMS_SRF)#CLDLOW CLDMED CLDHGH QFLX LWCF SWCF TSMN TSMX FSNSC FSNTC FLNTC FLUT FLUTC) #LHFLX FLNT FSNT TS TREFHT ICEFRAC SHFLX QREFHT PRECC PRECL PBLH CLDTOT FLDS FLNS FLNSC FSDS FSDSC FSNS FSNSC TAUX TAUY) #FLNT FSNT TS TREFHT ICEFRAC)
set atm_vars_daily = (  TS )#PRECT TS )

#set lnd_vars_monthly = (BTRAN2 BTRANMN EFLX_LH_TOT ER FCEV FGEV FCTR FIRA FIRE FLDS FPSN FSA FSDS  FSH GPP GR GSSHALN GSSUNLN HUMIDEX IWUELN LAISHA LAISUN LEAFN LEAFCN NPP NUPTAKE PLANT_NDEMAND QBOT QOVER QRUNOFF RAIN RAIN_FROM_ATM RH2M SMP SWBGT TAUX TAUY TOTCOLC TOTVEGC TSA TSKIN TV TWS VEGWPLN VPD2M VPD_CAN WBT
set lnd_vars_monthly = (QBOT PBOT)#FSRVD FSDSVD FSRVI FSDSVI FSRND FSDSND FSRNI FSDSNI TAUY) #FCTR FIRA FIRE FLDS FPSN FSA FSDS  FSH GPP GR GSSHALN GSSUNLN HUMIDEX IWUELN LAISHA LAISUN LEAFN LEAFCN NPP NUPTAKE PLANT_NDEMAND QBOT QOVER QRUNOFF RAIN RAIN_FROM_ATM RH2M SMP SWBGT TAUX TAUY TOTCOLC TOTVEGC TSA TSKIN TV TWS VEGWPLN VPD2M VPD_CAN WBT)
set lnd_vars_monthly2 = ( )
set lnd_vars_daily = ( EFLX_LH_TOT FSH FSA FIRA TSKIN TBOT QBOT PBOT)
set lnd_vars_daily2 = (GSSHALN GSSUNLN ANSHA_LN ANSUN_LN VPD_CAN_LN GBMOL_LN QVEGT_LN)

#set basedir = /glade/scratch/$user/archive/
#set basedir = /glade/campaign/cgd/tss/czarakas/CoupledPPE/offline_simulations
set basedir = /glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations

set do_monthly = 0
set do_daily = 1
set do_land = 0
set do_atm = 1

set reassign_time_to_midpoint = 0
#------------------------------------------------------------------------

echo "user = " $user
echo "base directory = " $basedir
 
# Loop over each case:
foreach casename ($caselist)

    echo "casename = " $casename
    echo "user = " $user
    set workdir = $basedir/$casename
    if (! -d $workdir) then 
        echo $workdir " does not exist"
    else
        echo "workdir = " $workdir
    endif
       
    if ($do_atm == 1) then
    
        #-------------------------------------------------------
        #             Time series of atmospheric variables
        #-------------------------------------------------------
        set ts_dir = $workdir/atm/proc/tseries

        if (! -d $workdir/atm/proc) then
            mkdir $workdir/atm/proc
            echo "creating " $workdir/atm/proc
        endif

        if (! -d $ts_dir) then 
            mkdir $ts_dir
            echo "creating " $ts_dir
        endif
            
        if ($do_monthly == 1) then
            # Monthly atmospheric variables
            foreach var ($atm_vars_monthly)
                setenv VAR $var
                setenv FIL $ts_dir/$casename.cam.h0.timeseries.$var.nc
                echo $var

                echo "making time series for atm var " $var
                # Make time series of entire run
                ncrcat -O -v $var $workdir/atm/hist/$casename.cam.h0.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        endif
        
        if ($do_daily == 1) then
            # Monthly atmospheric variables
            foreach var ($atm_vars_daily)
                setenv VAR $var
                setenv FIL $ts_dir/$casename.cam.h2.timeseries.$var.nc

                echo $var

                echo "making time series for atm var " $var
                # Make time series of entire run
                ncrcat -O -v $var $workdir/atm/hist/$casename.cam.h2.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        endif
        
        echo "done atm timeseries"
    endif
    
    if ($do_land == 1) then

        #-------------------------------------------------------
        #             Time series of land variables
        #-------------------------------------------------------
        set ts_dir = $workdir/lnd/proc/tseries
        
        if (! -d $workdir/lnd/proc) then
            mkdir $workdir/lnd/proc
            echo "creating " $workdir/lnd/proc
        endif

        if (! -d $ts_dir) then 
            mkdir $ts_dir
            echo "creating " $ts_dir
        endif

        if ($do_monthly == 1) then
            foreach var ($lnd_vars_monthly)
                setenv VAR $var
                setenv FIL $ts_dir/$casename.clm2.h0.timeseries.$var.nc
                echo $var
                
                #echo $workdir/lnd/hist/$casename.clm2.h0.*.nc
                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h0.*.nc $FIL
            
                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
   
            foreach var ($lnd_vars_monthly2)
            echo $var
                setenv VAR $var
                setenv FIL $ts_dir/$casename.clm2.h1.timeseries.$var.nc

                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h1.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        endif
        
        if ($do_daily == 1) then
            foreach var ($lnd_vars_daily)
                echo $var
                setenv VAR $var
                setenv FIL $ts_dir/$casename.clm2.h3.timeseries.$var.nc

                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h3.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        
            echo "done land timeseries"
        endif
   endif 
end #foreach
