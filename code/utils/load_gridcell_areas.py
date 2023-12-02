import xarray as xr
import numpy as np

dir_example='/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/COUP0015_PI_SOM_v02/atm/hist'
ds_h0=xr.open_dataset(dir_example+'/COUP0015_PI_SOM_v02.cam.h0.0108-09.nc')

ds_temp2 = xr.open_dataset('/glade/campaign/cgd/tss/czarakas/CoupledPPE/coupled_simulations/'+
                           'COUP0000_PI_SOM'+
                           '/lnd/hist/'+
                           'COUP0000_PI_SOM.clm2.h0.0049-02-01-00000.nc')

landfrac=ds_temp2.landfrac
landfrac_atmgrid=landfrac.reindex_like(ds_h0, method='nearest', tolerance=0.05)
landarea_atmgrid=ds_temp2.area.reindex_like(ds_h0, method='nearest', tolerance=0.05)

# calculate land area by multiplying by land fraction and converting area from km2 to m2
landarea=(ds_temp2.area*1e6*ds_temp2.landfrac)

# calculate land weights to account for differences in grid sizes across latitudes
landweights=landarea/landarea.mean(dim=['lat','lon'])

# define fraction of gridcell which is glacier (e.g. Antarctica and Greenland)
glc_frac=ds_temp2.PCT_LANDUNIT.max(dim='time')[3,:,:]/100

# define nonglaciated landarea
landarea_nonglac=landarea*(1-glc_frac)

# define nonglaciated landweight
landweights_nonglac=landarea_nonglac/landarea_nonglac.mean(dim=['lat','lon'])

def subset_landarea(latmax=100, latmin=-100, lonmax=1000, lonmin=-1000):
    landarea_subset=landarea.where((landarea.lat<latmax)&
                                  (landarea.lat>latmin)&
                                  (landweights.lon>lonmin)&
                                  (landweights.lon<lonmax))
    return landarea_subset

def subset_landweights(latmax=100, latmin=-100, lonmax=1000, lonmin=-1000):
    landarea_subset=subset_landarea(latmax, latmin, lonmax, lonmin)
    landweights_subset=landarea_subset/landarea_subset.mean(dim=['lat','lon'])
    return landweights_subset

def calculate_mean(ds, landweights=landweights):#landweights_nonglac):
    ds_annual=ds[12*60:,:,:].groupby('time.year').mean(dim='time')
    ds_annual_global=(ds_annual*landweights).mean(dim=['lat','lon'])
    return ds_annual_global

def calculate_sum(ds, landarea=landarea):#landweights_nonglac):
    ds_annual=ds[12*60:,:,:].groupby('time.year').mean(dim='time')
    ds_annual_global=(ds_annual*landarea).sum(dim=['lat','lon'])
    #.rolling(time=12).mean()
    return ds_annual_global

def earth_radius(lat):
    '''
    calculate radius of Earth assuming oblate spheroid
    defined by WGS84
    
    Input
    ---------
    lat: vector or latitudes in degrees  
    
    Output
    ----------
    r: vector of radius in meters
    
    Notes
    -----------
    WGS84: https://earth-info.nga.mil/GandG/publications/tr8350.2/tr8350.2-a/Chapter%203.pdf
    '''
    from numpy import deg2rad, sin, cos

    # define oblate spheroid from WGS84
    a = 6378137
    b = 6356752.3142
    e2 = 1 - (b**2/a**2)
    
    # convert from geodecic to geocentric
    # see equation 3-110 in WGS84
    lat = deg2rad(lat)
    lat_gc = np.arctan( (1-e2)*np.tan(lat) )

    # radius equation
    # see equation 3-107 in WGS84
    r = (
        (a * (1 - e2)**0.5) 
         / (1 - (e2 * np.cos(lat_gc)**2))**0.5 
        )

    return r

def area_grid(lat, lon):
    """
    Calculate the area of each grid cell
    Area is in square meters
    
    Input
    -----------
    lat: vector of latitude in degrees
    lon: vector of longitude in degrees
    
    Output
    -----------
    area: grid-cell area in square-meters with dimensions, [lat,lon]
    
    Notes
    -----------
    Based on the function in
    https://github.com/chadagreene/CDT/blob/master/cdt/cdtarea.m
    """
    from numpy import meshgrid, deg2rad, gradient, cos
    from xarray import DataArray

    xlon, ylat = meshgrid(lon, lat)
    R = earth_radius(ylat)

    dlat = deg2rad(gradient(ylat, axis=0))
    dlon = deg2rad(gradient(xlon, axis=1))

    dy = dlat * R
    dx = dlon * R * cos(deg2rad(ylat))

    area = dy * dx

    xda = DataArray(
        area,
        dims=["lat", "lon"],
        coords={"lat": lat, "lon": lon},
        attrs={
            "long_name": "area_per_pixel",
            "description": "area per pixel",
            "units": "m^2",
        },
    )
    return xda