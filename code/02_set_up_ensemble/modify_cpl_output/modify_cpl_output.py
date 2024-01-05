import xarray as xr
import matplotlib.pyplot as plt
import glob
import numpy as np

dir_in='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc/'
var_to_change='a2x3h_Faxa_lwdn'

prefix='0'

fnames_all=glob.glob(dir_in+'*.'+prefix+'*.nc')

fnames_ha2x1d=glob.glob(dir_in+'*ha2x1d*.'+prefix+'*.nc')
fnames_ha2x1h=glob.glob(dir_in+'*ha2x1h*.'+prefix+'*.nc')
fnames_ha2x3h=glob.glob(dir_in+'*ha2x3h*.'+prefix+'*.nc')

print(len(fnames_ha2x3h))

if var_to_change=='a2x3h_Faxa_rainl':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_Precipitation_decrease10pct/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        var_to_change2='a2x3h_Faxa_rainc'
        var_to_change3='a2x3h_Faxa_snowl'
        var_to_change4='a2x3h_Faxa_snowc'
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]*0.9
        ds[var_to_change2]=ds[var_to_change2]*0.9
        ds[var_to_change3]=ds[var_to_change3]*0.9
        ds[var_to_change4]=ds[var_to_change4]*0.9
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")

elif var_to_change=='a2x3h_Sa_tbot':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_decreaseTbot/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]-1
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")

elif var_to_change=='a2x3h_Sa_shum':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_increaseShum2/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]*1.2#+0.0002
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")
        
elif var_to_change=='a2x3h_Faxa_swndr':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_SW_increase10pct/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds['a2x3h_Faxa_swndr']=ds['a2x3h_Faxa_swndr']*1.1
        ds['a2x3h_Faxa_swndf']=ds['a2x3h_Faxa_swndf']*1.1
        ds['a2x3h_Faxa_swvdr']=ds['a2x3h_Faxa_swvdr']*1.1
        ds['a2x3h_Faxa_swvdf']=ds['a2x3h_Faxa_swvdf']*1.1
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")
        
elif var_to_change=='a2x3h_Faxa_lwdn':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_decreaseTbot/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds[var_to_change]=ds[var_to_change]*1.1
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")
        
elif var_to_change=='a2x3h_Faxa_swndr_decrease':
    dir_out='/glade/scratch/czarakas/archive/CoupledPPE/COUP0000_PI_SOM/cpl/proc_SW_decrease10pct/'
    for i, fname_full in enumerate(fnames_ha2x3h):
        print(i)
        ds=xr.open_dataset(fname_full)
        fname_out=fname_full.split('/')[9]
        ds['a2x3h_Faxa_swndr']=ds['a2x3h_Faxa_swndr']*0.9
        ds['a2x3h_Faxa_swndf']=ds['a2x3h_Faxa_swndf']*0.9
        ds['a2x3h_Faxa_swvdr']=ds['a2x3h_Faxa_swvdr']*0.9
        ds['a2x3h_Faxa_swvdf']=ds['a2x3h_Faxa_swvdf']*0.9
        ds.to_netcdf(path=dir_out+fname_out,
                                    format="NETCDF3_64BIT")
    
    