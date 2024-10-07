import xarray as xr 
import numpy as np

dpm = {'noleap': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       '365_day': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       'standard': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       'gregorian': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       'proleptic_gregorian': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       'all_leap': [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       '366_day': [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
       '360_day': [0, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30]}

def get_dpm(time, calendar='standard'):
    """
    return a array of days per month corresponding to the months provided in `months`
    """
    month_length = np.zeros(len(time), dtype=np.int)

    cal_days = dpm[calendar]

    for i, (month, year) in enumerate(zip(time.month, time.year)):
        month_length[i] = cal_days[month]
    return month_length

def calculate_annual_timeseries(da, season='Annual',
                               end_spinup=0):
    month_length = xr.DataArray(get_dpm(da.time.to_index(),
                                      calendar='noleap'),
                              coords=[da.time], name='month_length')
    
    numyears=np.size(da.time.groupby('time.year').mean(dim='time'))
    
    if season=='Annual':
        weights = month_length.groupby('time.year') / month_length.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each year is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
    
        # Calculate the weighted average
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
    else:
        months_filtered = month_length.where(month_length['time.season']==season)
        weights = months_filtered.groupby('time.year') / months_filtered.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each season is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
        
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
        
    return this_ensemble_tseries

def calculate_annual_average(da):
    da_annual=calculate_annual_timeseries(da,
                                           season='Annual')
    da_avg=da_annual.mean(dim='year')
    return da_avg


"""def calculate_annual_timeseries(da, season='Annual',
                               end_spinup=0):
    month_length = xr.DataArray(get_dpm(da.time.to_index(),
                                      calendar='noleap'),
                              coords=[da.time], name='month_length')
    
    numyears=np.size(da.time.groupby('time.year').mean(dim='time'))
    
    if season=='Annual':
        weights = month_length.groupby('time.year') / month_length.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each year is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
    
        # Calculate the weighted average
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
    else:
        months_filtered = month_length.where(month_length['time.season']==season)
        weights = months_filtered.groupby('time.year') / months_filtered.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each season is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
        
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
        
    return this_ensemble_tseries
"""


#dpm = {'noleap': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       '365_day': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       'standard': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       'gregorian': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       'proleptic_gregorian': [0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       'all_leap': [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       '366_day': [0, 31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31],
#       '360_day': [0, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30]}

#def get_dpm(time, calendar='standard'):
#    """
#    return a array of days per month corresponding to the months provided in `months`
#    """
#    month_length = np.zeros(len(time), dtype=np.int)
#
#    cal_days = dpm[calendar]
#
#    for i, (month, year) in enumerate(zip(time.month, time.year)):
#        month_length[i] = cal_days[month]
#   return month_length


"""
# FROM 02_Calculate_annual_means.ipynb
ds=basecase_lnd
month_length = xr.DataArray(get_dpm(ds.time.to_index(),
                                      calendar='noleap'),
                              coords=[ds.time], name='month_length')

numyears=np.size(ds.time.groupby('time.year').mean(dim='time').year)

# Calculate the weights by grouping by 'time.season'.
# Conversion to float type ('astype(float)') only necessary for Python 2.x
weights = month_length.groupby('time.year') / month_length.astype(float).groupby('time.year').sum()

# Test that the sum of the weights for each season is 1.0
#weights.groupby('time.month').sum().values
np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))

# Calculate the weighted average
ds_weighted = (ds[var] * weights).groupby('time.year').sum(dim='time')

"""

"""
# FROM 02_Calculate_annual_means.ipynb
def calculate_annual_timeseries(da, season='Annual',
                               end_spinup=0):
    month_length = xr.DataArray(get_dpm(da.time.to_index(),
                                      calendar='noleap'),
                              coords=[da.time], name='month_length')
    
    numyears=np.size(da.time.groupby('time.year').mean(dim='time'))
    
    if season=='Annual':
        weights = month_length.groupby('time.year') / month_length.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each year is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
    
        # Calculate the weighted average
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
    else:
        months_filtered = month_length.where(month_length['time.season']==season)
        weights = months_filtered.groupby('time.year') / months_filtered.astype(float).groupby('time.year').sum()
        
        # Test that the sum of the weights for each season is 1.0
        np.testing.assert_allclose(weights.groupby('time.year').sum().values, np.ones(numyears))
        
        da_weighted = (da * weights).groupby('time.year').sum(dim='time')
        this_ensemble_tseries=da_weighted[end_spinup:,:,:]
        
    return this_ensemble_tseries
"""