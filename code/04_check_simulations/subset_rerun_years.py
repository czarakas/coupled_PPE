"""
To run this:
   * edit paths to input/output files
   * in terminal on NCAR computer
       >> module load python/3.7.9
       >> module load ncarenv
       >> ncar_pylib
       >> python3 subset_rerun_years.py
"""

import xarray as xr

# Write processed files
experiment_key='COUP0006'
fdir_in='/glade/campaign/cgd/tss/czarakas/'+experiment_key+'_PI_SOM_v03/lnd/hist/'
fdir_out='/glade/campaign/cgd/tss/czarakas/'+experiment_key+'_PI_SOM_v03/lnd/proc/subset/'
fnames_to_process=[experiment_key+'_PI_SOM_v03.clm2.h0.0154-02-01-00000.nc',
                   experiment_key+'_PI_SOM_v03.clm2.h1.0154-02-01-00000.nc', 
                   experiment_key+'_PI_SOM_v03.clm2.h2.0154-02-01-00000.nc']
fnames_to_process_out=[experiment_key+'_PI_SOM_v02.clm2.h0.rerun_0154-02-01-00000.nc',
                       experiment_key+'_PI_SOM_v02.clm2.h1.rerun_0154-02-01-00000.nc', 
                       experiment_key+'_PI_SOM_v02.clm2.h2.rerun_0154-02-01-00000.nc']

for i,fname in enumerate(fnames_to_process):
    fname_out=fnames_to_process_out[i]
    print(fname)
    print(fname_out)
    ds_in=xr.open_dataset(fdir_in+fname)
    ds_out=ds_in.isel(time=slice(0,60))
    ds_out.to_netcdf(fdir_out+fname_out, format='NETCDF3_64BIT')