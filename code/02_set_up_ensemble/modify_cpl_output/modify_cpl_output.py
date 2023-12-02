import xarray as xr
import matplotlib.pyplot as plt
import glob
import numpy as np

dir_in='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc/'
var_to_change='a2x3h_Faxa_rainl'

prefix='00'

fnames_all=glob.glob(dir_in+'*.'+prefix+'*.nc')

fnames_ha2x1d=glob.glob(dir_in+'*ha2x1d*.'+prefix+'*.nc')
fnames_ha2x1h=glob.glob(dir_in+'*ha2x1h*.'+prefix+'*.nc')
fnames_ha2x3h=glob.glob(dir_in+'*ha2x3h*.'+prefix+'*.nc')

print(len(fnames_ha2x3h))

if var_to_change=='a2x3h_Faxa_rainl':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_increasePrecipitation/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]+0.0001
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")

elif var_to_change=='a2x3h_Sa_tbot':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_increaseTbot/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]+1
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")

elif var_to_change=='a2x3h_Sa_shum':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_increaseShum/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]+0.0002
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")