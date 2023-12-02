import xarray as xr
import matplotlib.pyplot as plt
import numpy as np
import glob
import pandas as pd
from scipy.stats import ttest_ind
from cartopy.util import add_cyclic_point
import cartopy.crs as ccrs

dir_example='/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/COUP0015_PI_SOM_v02/atm/hist'
ds_h0=xr.open_dataset(dir_example+'/COUP0015_PI_SOM_v02.cam.h0.0108-09.nc')
ds_h1=xr.open_dataset(dir_example+'/COUP0015_PI_SOM_v02.cam.h1.0063-02.nc')
ds_h2=xr.open_dataset(dir_example+'/COUP0015_PI_SOM_v02.cam.h2.0087-01-02-00000.nc')

ds_lnd=xr.open_dataset('/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/'+
                           'COUP0000_PI_SOM'+
                           '/lnd/hist/'+
                           'COUP0000_PI_SOM.clm2.h0.0049-02-01-00000.nc')

crosswalk = pd.read_csv('/glade/u/home/czarakas/coupled_PPE/code/02_set_up_ensemble/CLM5PPE_coupledPPE_crosswalk.csv')
keys_short=crosswalk.key_coupledPPE.str.split('COUP', expand=True)[1]
crosswalk['Key_short']=keys_short
crosswalk['description']=crosswalk['param']+', '+crosswalk['minmax']
crosswalk=crosswalk.drop(index=0)

keys=crosswalk['Key_short'].values
keys_coupledPPE = crosswalk['key_coupledPPE'].values
keys_landonlyPPE = crosswalk['key_landonlyPPE'].values

def load_coupled_ensemble(var, domain='atm', keys=keys_coupledPPE, printon=False, subdir=''):
    ensemble_coupled = []
    for key in keys:
        if printon: print(key)
        if domain=='atm':
            fpath=('/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/'+
                               key+'_PI_SOM_v02/atm/proc/tseries/'+subdir+
                               key+'_PI_SOM_v02.cam.h0.'+var+'.nc')
        elif domain=='lnd':
            fpath=('/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/'+
                               key+'_PI_SOM_v02/lnd/proc/tseries/'+subdir+
                               key+'_PI_SOM_v02.clm2.h0.'+var+'.nc')
        else:
            print('unrecognized domain')
            
        if np.size(glob.glob(fpath))>0:
            ds = xr.open_mfdataset(fpath)
            if printon: print(ds.time.values[0])
        else:
            print("no "+fpath)
            ds = None
        ensemble_coupled.append(ds)
    
    return ensemble_coupled

def load_offline_ensemble(var, domain='lnd', keys=keys_coupledPPE, printon=False, subdir=''):
    ensemble_offline = []
    for key in keys_landonlyPPE:
        if printon: print(key)
        if domain=='lnd':
            fpath=('/glade/campaign/cgd/tss/czarakas/CoupledPPE/offline_simulations/'+
                               key+'_PI_v02/lnd/proc/tseries/'+subdir+
                               key+'_PI_v02.clm2.h0.'+var+'.nc')
        else:
            print('unrecognized domain')
            
        if np.size(glob.glob(fpath))>0:
            ds = xr.open_mfdataset(fpath)
            if printon: print(ds.time.values[0])
        else:
            print("no "+fpath)
            ds = None
        ensemble_offline.append(ds)
    return ensemble_offline