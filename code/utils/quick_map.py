import matplotlib.pyplot as plt
from cartopy.util import add_cyclic_point
import cartopy.crs as ccrs
from scipy.stats import ttest_ind
import numpy as np
import cartopy

def quick_map(mapdata, title=None, outpath=None, colorlabel=None, cmap=plt.cm.get_cmap("magma", 10), clims=None,maskocean=True):
    fig = plt.figure(figsize=(10,7))
    ax = plt.axes(projection=ccrs.Robinson())
    
    cyclic_data, cyclic_lons = add_cyclic_point(mapdata, coord=mapdata.lon)

    plt.pcolormesh(cyclic_lons, mapdata.lat, #contourf
                   cyclic_data, 
                   cmap=cmap,
                   transform=ccrs.PlateCarree())
    if clims is not None:
        plt.pcolormesh(cyclic_lons, mapdata.lat, #contourf
                   cyclic_data, 
                   cmap=cmap,
                   transform=ccrs.PlateCarree(), vmin=clims[0], vmax=clims[1])
    else:
        plt.pcolormesh(cyclic_lons, mapdata.lat, #contourf
                   cyclic_data, 
                   cmap=cmap,
                   transform=ccrs.PlateCarree())
        #, extend='both')
    
    if title is not None: plt.title(title)
    
    if colorlabel is None:
        plt.colorbar(orientation='horizontal')
    else:
        plt.colorbar(orientation='horizontal', label=colorlabel)

    if outpath is not None:
        plt.savefig(outpath)
        
    if maskocean:
        ax.add_feature(cartopy.feature.OCEAN, facecolor='white', zorder=1)
    ax.coastlines()
    ax.set_global()


    plt.tight_layout()
    
    return fig

def quick_map_subplot(mapdata_for_subplot, lat, lon, nrow=3, ncol=3, ind=1, title=None, cb_ttl=None,
              cmap=None, clim=None, filepath=None, sighatch=False,
              p=None, sigmask=None, markerstyle='x', markersize=1.0, norm=None):
    """ Creates map """
    ax = plt.subplot(nrow, ncol, ind+1, projection=ccrs.Robinson())
    ax.coastlines(resolution='110m') #learn how to add resolution here??
    ax.set_global()

    cyclic_data, cyclic_lons = add_cyclic_point(mapdata_for_subplot, coord=lon)

    if norm:
        cs = plt.pcolormesh(cyclic_lons, lat, cyclic_data,
                            transform=ccrs.PlateCarree())
    else:
        cs = plt.pcolormesh(cyclic_lons, lat, cyclic_data,
                            transform=ccrs.PlateCarree(), norm=norm)

    # Choose your colormap
    if cmap:
        plt.set_cmap(cmap)
    else:
        plt.set_cmap(plt.cm.viridis)

    ax.patch.set_alpha(1.0)
        
    plt.title(title, fontsize=20)

    if clim:
        plt.clim(clim)
        cs.set_clim(clim[0], clim[1])
        cs.set_clim(clim)
    
    cbar = plt.colorbar(ax=ax, orientation='horizontal',
                            extend='both', pad=.02, shrink=0.9, norm=norm)
    cbar.ax.tick_params(labelsize=14)

    if clim:
        cbar.set_clim(clim)

    if cb_ttl:
        cbar.set_label(cb_ttl, fontsize=20)
        
def quick_map_subplot_contour(mapdata_for_subplot, lat, lon, nrow=3, ncol=3, ind=1, title=None, cb_ttl=None,
              cmap=None, clim=None, filepath=None, sighatch=False,
              p=None, sigmask=None, markerstyle='x', markersize=1.0, norm=None):
    """ Creates map """
    ax = plt.subplot(nrow, ncol, ind+1, projection=ccrs.Robinson())
    ax.coastlines(resolution='110m') #learn how to add resolution here??
    ax.set_global()

    cyclic_data, cyclic_lons = add_cyclic_point(mapdata_for_subplot, coord=lon)
    if sigmask is not None:
        cyclic_data_mask, cyclic_lons_mask = add_cyclic_point(sigmask, coord=lon)

    cs = plt.contourf(cyclic_lons, lat, cyclic_data,
                            transform=ccrs.PlateCarree(), extend='both',levels=np.linspace(clim[0],clim[1],12))
    #cs = plt.pcolormesh(cyclic_lons, lat, cyclic_data,
    #                        transform=ccrs.PlateCarree(), norm=norm)

    if sigmask is not None:
        ax.contourf(
            cyclic_lons_mask, lat, cyclic_data_mask,
            transform=ccrs.PlateCarree(),
            colors='none',
            levels=[0.5, 1.5],
            hatches=['///////'])
        
    # Choose your colormap
    if cmap:
        plt.set_cmap(cmap)
    else:
        plt.set_cmap(plt.cm.viridis)

    ax.patch.set_alpha(1.0)
        
    plt.title(title, fontsize=20)

    if clim:
        plt.clim(clim)
        cs.set_clim(clim[0], clim[1])
        cs.set_clim(clim)
    
    cbar = plt.colorbar(ax=ax, orientation='horizontal',
                            extend='both', pad=.02, shrink=0.9, norm=norm)
    cbar.ax.tick_params(labelsize=14)

    if clim:
        cbar.set_clim(clim)

    if cb_ttl:
        cbar.set_label(cb_ttl, fontsize=20)