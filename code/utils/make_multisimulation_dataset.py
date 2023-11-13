import xarray as xr
import numpy as np

def make_empty_dataarray(ds_grid, var, keys):
    ds_out = xr.Dataset({'lat': ds_grid['lat'],
                         'lon': ds_grid['lon']})
    
    grid_dims = np.shape(ds_grid.mean(dim='time').values)
    
    ds_all_ensembles=ds_grid.mean(dim='time')
    grid_dims_geo = np.shape((ds_grid[var]).mean(dim='time').values)
    ds_all_ensembles = ds_all_ensembles.drop(var)
    #ds_all_ensembles = ds_all_ensembles.drop('var')
    ds_all_ensembles = ds_all_ensembles.assign_coords(ensemble_key=keys)
    grid_dims = [grid_dims_geo[0], grid_dims_geo[1],  len(keys)]
    
    var_array = xr.DataArray(np.zeros(grid_dims),
                         dims=['lat','lon','ensemble_key'],
                                 coords={'lat': ds_grid['lat'], #'time': ds_all_ensembles['time'],
                                       'lon':ds_grid['lon'],
                                       'ensemble_key':ds_all_ensembles['ensemble_key']})
    
    return var_array