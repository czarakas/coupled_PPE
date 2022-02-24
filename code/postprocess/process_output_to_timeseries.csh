#! /bin/tcsh

module load nco
module load ncl

# Script which makes means and time series of CESM model output
# Script originally made by Marysa Lague 2017.04.04
# Edited by Claire Zarakas 2021.09.15
# submit with:
# >> qcmd -l walltime=1:00:00 -A UWAS0044 —- ./process_output_to_timeseries.csh

#------------------------------------------------------------------------
# This is the name of the cases we'll make means/time series of
set caselist = (coupled_BGC_defParams_SpinUp_001)  

# List the variables which you want to make time series of here (for now, I'm just doing a handfull).
set atm_vars_monthly = (co2vmr TS TREFHT  FLNT FSNT ICEFRAC)
#set atm_vars_daily = ( TSMN TSMX PRECT TS )

set lnd_vars_monthly = ( PCO2 PBOT TLAI TSAI TBOT TSA TSKIN GPP NPP NEE ER AR HTOP TWS TOTVEGC TOTVEGN TOTECOSYSC TOTECOSYSN FSNO)
#set lnd_vars_monthly = (FSA ALTMAX ANSHA_LN ANSUN_LN AR ATM_TOPO BTRAN2 BTRANMN C13_GPP COL_FIRE_CLOSS EFLX_LH_TOT FAREA_BURNED FCEV FCTR FGEV FIRE FLDS FPSN FSDS FSH FSH_TO_COUPLER GPP GSSHA GSSHALN GSSUN GSSUNLN HR IWUELN LAISHA LAISUN NEE NPP Q2M QDRAI QHR QOVER QRUNOFF QSOIL QVEGE QVEGT RAIN_FROM_ATM RH2M SMP SOILWATER_10CM TLAI TSA TSOI_10CM TV TWS VEGWP VEGWPLN VPD2M VPD_CAN VPD_CAN_LN TBOT THBOT PBOT TSKIN TS QBOT SOILLIQ)
set lnd_vars_monthly2 = ( )
set lnd_vars_daily = ( GPP LAISUN LAISHA GSSHA GSSUN PCO2 PBOT THBOT QSOIL QVEGE QVEGT QRUNOFF RH2M BTRAN2 FLDS FSDS FSR FIRE FSH EFLX_LH_TOT TSKIN TSA VPD_CAN FPSN PSNSHA PSNSUN GBMOL ) #SMP, VEGWP
set lnd_vars_daily2 = (GSSHALN GSSUNLN ANSHA_LN ANSUN_LN VPD_CAN_LN GBMOL_LN QVEGT_LN)

set do_monthly = 1
set do_daily = 0
set do_land = 1
set do_atm = 1
#------------------------------------------------------------------------

# Loop over each case:
foreach casename ($caselist)

    echo "casename = " $casename
    echo "user = " $user
    set workdir = /glade/scratch/$user/archive/$casename
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
                setenv FIL $ts_dir/$casename.cam.h1.timeseries.$var.nc

                echo "making time series for atm var " $var
                # Make time series of entire run
                ncrcat -O -v $var $workdir/atm/hist/$casename.cam.h1.*.nc $FIL

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

                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h0.*.nc $FIL
            
                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
   
            foreach var ($lnd_vars_monthly2)
                setenv VAR $var
                setenv FIL $ts_dir/$casename.clm2.h1.timeseries.$var.nc

                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h1.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        endif
        
        if ($do_daily == 1) then
            foreach var ($lnd_vars_daily)
                setenv VAR $var
                setenv FIL $ts_dir/$casename.clm2.h2.timeseries.$var.nc

                ncrcat -O -v $var $workdir/lnd/hist/$casename.clm2.h2.*.nc $FIL

                # Reindex time from endpoint to midpoint
                ncl reassign_time_to_midpoint.ncl
            end #foreach
        
            foreach var ($lnd_vars_daily2)
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
