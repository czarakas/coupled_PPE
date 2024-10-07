import xarray as xr
import numpy as np

def calculate_sig_changes_FDR(pval_array, 
                              K,
                              alpha_global=0.05):
    significant_changes=np.zeros(np.shape(pval_array))
    significant_changes[:]=np.nan
    significant_changes_xr=xr.DataArray(significant_changes,
                                        dims=("lat", "lon", "ensemble_key"),
    coords=[('lat',pval_array.lat),
            ('lon',pval_array.lon),
           ('ensemble_key',pval_array.ensemble_key)])

    for ensemble_ind, param_name in enumerate(pval_array.ensemble_key):
        sorted_pvals=np.sort(pval_array[:,:,ensemble_ind].values.flatten())
        sorted_pvals_onlyland=sorted_pvals[~np.isnan(sorted_pvals)]

        min_pval_1pt=np.nan
        minj=np.nan
        for j, pval_1pt in enumerate(sorted_pvals_onlyland):
            if (pval_1pt<(alpha_global*((j+1)/K))):
                min_pval_1pt=pval_1pt
                minj=j
        #print(ensemble_name.values)
        #print(min_pval_1pt)
        #print(minj)

        significant_changes_xr[:,:,ensemble_ind]= (pval_array[:,:,ensemble_ind]<=min_pval_1pt)

    return significant_changes_xr

"""for ensemble_ind, ensemble_name in enumerate(pvals.ensemble_key):
    sorted_pvals=np.sort(pvals[:,:,ensemble_ind].values.flatten())
    sorted_pvals_onlyland=sorted_pvals[~np.isnan(sorted_pvals)]

    min_pval_1pt=np.nan
    minj=np.nan
    for j, pval_1pt in enumerate(sorted_pvals_onlyland):
        if (pval_1pt<(alpha_global*((j+1)/K))):
            min_pval_1pt=pval_1pt
            minj=j
    #print(ensemble_name.values)
    #print(min_pval_1pt)
    #print(minj)

    significant_changes_xr[:,:,ensemble_ind]= (pvals[:,:,ensemble_ind]<=min_pval_1pt)
    """

"""
def calculate_sig_changes_FDR(pval_array, 
                              K,
                              alpha_global=0.05):
    significant_changes=np.zeros(np.shape(pval_array))
    significant_changes[:]=np.nan
    significant_changes_xr=xr.DataArray(significant_changes,
                                        dims=("lat", "lon", "ensemble_key"),
    coords=[('lat',pval_array.lat),
            ('lon',pval_array.lon),
           ('ensemble_key',pval_array.ensemble_key)])

    for ensemble_ind, param_name in enumerate(pval_array.ensemble_key):
        sorted_pvals=np.sort(pval_array[:,:,ensemble_ind].values.flatten())
        sorted_pvals_onlyland=sorted_pvals[~np.isnan(sorted_pvals)]

        min_pval_1pt=np.nan
        minj=np.nan
        for j, pval_1pt in enumerate(sorted_pvals_onlyland):
            if (pval_1pt<(alpha_global*((j+1)/K))):
                min_pval_1pt=pval_1pt
                minj=j
        #print(ensemble_name.values)
        #print(min_pval_1pt)
        #print(minj)

        significant_changes_xr[:,:,ensemble_ind]= (pval_array[:,:,ensemble_ind]<=min_pval_1pt)

    return significant_changes_xr
"""