# Run with NPL-3.7.9 environment

# module load python/3.7.9
# module load ncarenv
# ncar_pylib
# python3 generate_time_series.py

import os
from pyreshaper import specification, reshaper
import glob
import xarray as xr
import matplotlib.pyplot as plt
import numpy as np

#---------------------------------------------------------------------
# EDIT THIS SECTION

# Run Settings
start_yr="0001"
end_yr="0023"
output_suffix="."+start_yr+"01-"+end_yr+"12.nc"
run_name='coupled_BGC_defParams_SpinUp_001'
run_path = '/glade/scratch/czarakas/archive/'+run_name+'/'
PRINTON=True

#---------------------------------------------------------------------
"""
atm_vars_to_save = ['CLOUD',
                    'FLDS','FLNS','FLNT','FLUT',
                    'FSDS','FSNS','FSNT','FSNTOA','FSUTOA',
                    'ICEFRAC','PRECC','PRECL','PS','PSL',
                    'T','TREFHT','TS','LANDFRAC']

lnd_vars_to_save = ['GPP','NPP','NBP','NEE','NEP',
                    'ER','AR','HR',
                    'TLAI','TSAI','HTOP',
                    'TOTVEGC','TOTVEGN','TOTECOSYSC','TOTECOSYSN',
                    'C13_GPP','C13_TOTECOSYSC','C13_TOTVEGC',
                    'TBOT','TSA','TSKIN','TWS','H2OSOI',
                    'FSNO','PBOT','PCO2','RAIN_FROM_ATM']

# Don't save any variables from Coupler  (cpl), ESP (esp), Ocean (ocn), or Ice (ice)
"""
# Atmospheric Variables (atm)
fnames_atm_monthly = glob.glob(run_path+'atm/hist/*.h0.*.nc')
fnames_atm_daily = glob.glob(run_path+'atm/hist/*.h1.*.nc')
output_path_atm = run_path+"atm/proc/tseries/"
output_path_atm_monthly = output_path_atm+'month_1/'+run_name+'.cam.h0.'
output_path_atm_daily = output_path_atm+'day_1/'+run_name+'.cam.h1.'

# Land Variables (lnd)
fnames_lnd_monthly = glob.glob(run_path+'lnd/hist/*.h0.*.nc')
fnames_lnd_daily = glob.glob(run_path+'lnd/hist/*.h2.*.nc')
output_path_lnd = run_path+"lnd/proc/tseries/"
output_path_lnd_monthly = output_path_lnd+'month_1/'+run_name+'.clm2.h0.'
output_path_lnd_daily = output_path_lnd+'day_1/'+run_name+'.clm2.h2.'

#---------------------------------------------------------------------
def check_and_make_dir(parent_dir, directory, printon=PRINTON):
    if not os.path.isdir(parent_dir+directory):
        path = os.path.join(parent_dir, directory)
        os.mkdir(path)
        if printon: print("Directory '%s' created" %path)
    else:
        if printon: print("'%s' directory exists" %(parent_dir+directory))

def set_up_directories(run_path=run_path, printon=PRINTON):
    # Make directories for processed output
    if printon: print(">>>>>>>>>> Setting up directories")
    check_and_make_dir(run_path+"atm/","proc/")
    check_and_make_dir(run_path+"atm/proc/","tseries/")
    check_and_make_dir(run_path+"atm/proc/tseries/", "month_1")
    check_and_make_dir(run_path+"atm/proc/tseries/", "day_1")
    check_and_make_dir(run_path+"lnd/","proc/")
    check_and_make_dir(run_path+"lnd/proc/","tseries/")
    check_and_make_dir(run_path+"lnd/proc/tseries/", "month_1")
    check_and_make_dir(run_path+"lnd/proc/tseries/", "day_1")

def generate_timeseries_files(fnames, 
                              output_file_prefix,
                              output_file_suffix,
                              vars_to_save=None):
    # Create a Specifier object
    specifier = specification.create_specifier()

    # Specify the input needed to perform the PyReshaper conversion
    specifier.input_file_list = fnames
    specifier.netcdf_format = "netcdf4"
    specifier.compression_level = 1
    specifier.output_file_prefix = output_file_prefix
    specifier.output_file_suffix = output_suffix
    specifier.time_variant_metadata = ["time", "time_bounds"]
    if vars_to_save is not None:
        specifier.time_series= vars_to_save
    
    # Create the PyReshaper object
    rshpr = reshaper.create_reshaper(specifier,
                                 serial=False,
                                 verbosity=1,
                                 wmode='s')

    # Run the conversion (slice-to-series) process
    rshpr.convert()
    
    # Print timing diagnostics
    rshpr.print_diagnostics()
    
def process_monthly_data(printon=PRINTON):
    if printon: print(">>>>>>>>>> Processing Land Monthly Output")
    generate_timeseries_files(fnames=fnames_lnd_monthly, 
                              output_file_prefix=output_path_lnd_monthly,
                              output_file_suffix=output_suffix)
    
    if printon: print(">>>>>>>>>> Processing Atmosphere Monthly Output")
    generate_timeseries_files(fnames=fnames_atm_monthly, 
                              output_file_prefix=output_path_atm_monthly,
                              output_file_suffix=output_suffix)
def process_daily_data(printon=PRINTON):
    if printon: print(">>>>>>>>>> Processing Land Daily Output")
    generate_timeseries_files(fnames=fnames_lnd_daily, 
                      output_file_prefix=output_path_lnd_daily,
                      output_file_suffix=output_suffix)

    if printon: print(">>>>>>>>>> Processing Atmosphere Daily Output")
    generate_timeseries_files(fnames=fnames_atm_daily, 
                      output_file_prefix=output_path_atm_monthly,
                      output_file_suffix=output_suffix)

#---------------------------------------------------------------------
# Run script
set_up_directories()
process_monthly_data()
process_daily_data()
