CDF       
      pft    O   segment       string_length      (   variants            history      �Fri Jun  3 13:40:24 2022: ncks -A -v crit_onset_gdd_sf,ndays_on /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210507_kwo.c220322.nc /glade/scratch/djk2120/PPEn11/paramfiles2/OAAT0000.nc
Fri Jun  3 13:40:24 2022: ncks -x -v ndays_on OAAT0000.nc /glade/scratch/djk2120/PPEn11/paramfiles2/OAAT0000.nc
Fri May  7 14:58:51 MDT 2021 : Add more hardcoded parameters from CTSM code into the paramsfile from Keith Oleson
Fri May  7 14:58:51 2021: ncks -A -v C2_liq_Brun89,mu,om_frac_sf,pc,slopebeta,slopemax /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210305_kwo.c210505.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210507.nc
Fri Mar  5 15:41:38 MST 2021 : Set dbh and nstem from Keith Oleson's latest parameter file used for PPE
Fri Mar  5 15:41:38 2021: ncks -A -v dbh,nstem /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210217_kwo.c210222.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210305.nc
Wed Feb 17 15:34:49 MST 2021 : Set g1 for bare-soil to zero (BB and Medlyn), set deadstem conversion flux for crops and bare-soil to one
Wed Feb 17 15:34:49 2021: ncks -A -v pconv /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210208.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210217.nc
Wed Jan 13 23:13:53 MST 2021 : Several changed parameters from the Perturbed Parameter Ensemble branch
Wed Jan 13 23:13:53 2021: ncks -A -v froot_leaf,kmax,krmax,leafcn,leafcn_max,leafcn_min,medlynslope,rholnir,rholvis,rhosnir,rhosvis,slatop,taulnir,taulvis,xl /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113b.nc
Wed Jan 13 22:55:31 MST 2021 : New params from Keith O. season_decid_temperate from Leah B. for Arctic LUNA, some scalar factors from Danica L. and Keith O.
Wed Jan 13 22:55:31 2021: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt,season_decid_temperate,jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113.nc
Tue Jan 12 00:15:05 MST 2021 : Add taper and variantname to file, change medlynslope for millet and sorghum, add coordinates to many pft dimensioned variables
Tue Jan 12 00:15:05 2021: ncks -A -v taper,medlynslope,variantnames /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210112.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc      Conventions       CF-1.0     title         1Vegetation (Plant Function Type or PFT) constants      NCO       _netCDF Operators version 5.0.3 (Homepage = http://nco.sf.net, Code = http://github.com/nco/nco)    nco_openmp_thread_number            history_of_appended_files        G�Fri Jun  3 13:40:24 2022: Appended file /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210507_kwo.c220322.nc had following "history" attribute:
Tue Mar 22 16:32:20 2022: ncks -A -v zbedrock_sf,zbedrock /glade/scratch/djk2120/PPEn11/paramfiles/OAAT0000.nc ctsm51_params.c210507_kwo.c220322.nc
Fri May  7 14:58:51 MDT 2021 : Add more hardcoded parameters from CTSM code into the paramsfile from Keith Oleson
Fri May  7 14:58:51 2021: ncks -A -v C2_liq_Brun89,mu,om_frac_sf,pc,slopebeta,slopemax /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210305_kwo.c210505.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210507.nc
Fri Mar  5 15:41:38 MST 2021 : Set dbh and nstem from Keith Oleson's latest parameter file used for PPE
Fri Mar  5 15:41:38 2021: ncks -A -v dbh,nstem /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210217_kwo.c210222.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210305.nc
Wed Feb 17 15:34:49 MST 2021 : Set g1 for bare-soil to zero (BB and Medlyn), set deadstem conversion flux for crops and bare-soil to one
Wed Feb 17 15:34:49 2021: ncks -A -v pconv /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210208.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210217.nc
Wed Jan 13 23:13:53 MST 2021 : Several changed parameters from the Perturbed Parameter Ensemble branch
Wed Jan 13 23:13:53 2021: ncks -A -v froot_leaf,kmax,krmax,leafcn,leafcn_max,leafcn_min,medlynslope,rholnir,rholvis,rhosnir,rhosvis,slatop,taulnir,taulvis,xl /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113b.nc
Wed Jan 13 22:55:31 MST 2021 : New params from Keith O. season_decid_temperate from Leah B. for Arctic LUNA, some scalar factors from Danica L. and Keith O.
Wed Jan 13 22:55:31 2021: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt,season_decid_temperate,jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113.nc
Tue Jan 12 00:15:05 MST 2021 : Add taper and variantname to file, change medlynslope for millet and sorghum, add coordinates to many pft dimensioned variables
Tue Jan 12 00:15:05 2021: ncks -A -v taper,medlynslope,variantnames /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210112.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Fri May  7 14:58:51 2021: Appended file /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210305_kwo.c210505.nc had following "history" attribute:
Fri Mar  5 15:41:38 MST 2021 : Set dbh and nstem from Keith Oleson's latest parameter file used for PPE
Fri Mar  5 15:41:38 2021: ncks -A -v dbh,nstem /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210217_kwo.c210222.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210305.nc
Wed Feb 17 15:34:49 MST 2021 : Set g1 for bare-soil to zero (BB and Medlyn), set deadstem conversion flux for crops and bare-soil to one
Wed Feb 17 15:34:49 2021: ncks -A -v pconv /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210208.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210217.nc
Wed Jan 13 23:13:53 MST 2021 : Several changed parameters from the Perturbed Parameter Ensemble branch
Wed Jan 13 23:13:53 2021: ncks -A -v froot_leaf,kmax,krmax,leafcn,leafcn_max,leafcn_min,medlynslope,rholnir,rholvis,rhosnir,rhosvis,slatop,taulnir,taulvis,xl /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113b.nc
Wed Jan 13 22:55:31 MST 2021 : New params from Keith O. season_decid_temperate from Leah B. for Arctic LUNA, some scalar factors from Danica L. and Keith O.
Wed Jan 13 22:55:31 2021: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt,season_decid_temperate,jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113.nc
Tue Jan 12 00:15:05 MST 2021 : Add taper and variantname to file, change medlynslope for millet and sorghum, add coordinates to many pft dimensioned variables
Tue Jan 12 00:15:05 2021: ncks -A -v taper,medlynslope,variantnames /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210112.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Fri Mar  5 15:41:38 2021: Appended file /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c210217_kwo.c210222.nc had following "history" attribute:
Mon Feb 22 13:22:44 2021: ncks -A -v medlynslope ctsm51_params.c210217.nc ctsm51_params.c210217_kwo.c210222.nc
Mon Feb 22 13:22:27 2021: ncks -A -v mbbopt ctsm51_params.c210217.nc ctsm51_params.c210217_kwo.c210222.nc
Mon Feb 22 13:22:07 2021: ncks -A -v pconv ctsm51_params.c210217.nc ctsm51_params.c210217_kwo.c210222.nc
Mon Feb 22 13:15:52 2021: ncks -O -a clm51_params.nstem_dbh_lower_2021.nc ctsm51_params.c210217_kwo.c210222.nc
Wed Jan 13 23:13:53 MST 2021 : Several changed parameters from the Perturbed Parameter Ensemble branch
Wed Jan 13 23:13:53 2021: ncks -A -v froot_leaf,kmax,krmax,leafcn,leafcn_max,leafcn_min,medlynslope,rholnir,rholvis,rhosnir,rhosvis,slatop,taulnir,taulvis,xl /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113b.nc
Wed Jan 13 22:55:31 MST 2021 : New params from Keith O. season_decid_temperate from Leah B. for Arctic LUNA, some scalar factors from Danica L. and Keith O.
Wed Jan 13 22:55:31 2021: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt,season_decid_temperate,jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210113.nc
Tue Jan 12 00:15:05 MST 2021 : Add taper and variantname to file, change medlynslope for millet and sorghum, add coordinates to many pft dimensioned variables
Tue Jan 12 00:15:05 2021: ncks -A -v taper,medlynslope,variantnames /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210112.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Wed Feb 17 15:34:49 2021: Appended file /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210208.nc had following "history" attribute:
Mon Feb  8 13:13:09 MST 2021 : Set g1 for bare-soil to zero (BB and Medlyn), set deadstem conversion flux for crops and bare-soil to one, and set irrigated c3 crop slatop same as non-irrigated
Mon Feb  8 13:13:09 2021: ncks -A -v mbbopt,medlynslope,pconv,slatop /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.pconvcropgqslatop_20210115.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210208.nc
Fri Jan 15 18:12:34 MST 2021 : Modify two biomass heat storage parameters from Sean Swenson
Fri Jan 15 18:12:34 2021: ncks -A -v dbh,nstem /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.nstem_dbh_lower_2021.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210115.nc
Tue Jan 12 00:15:05 MST 2021 : Add taper and variantname to file, change medlynslope for millet and sorghum, add coordinates to many pft dimensioned variables
Tue Jan 12 00:15:05 2021: ncks -A -v taper,medlynslope,variantnames /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c210112.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Wed Jan 13 23:13:53 2021: Appended file /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc had following "history" attribute:
Thu Nov  5 15:57:55 MST 2020 : Changes from Keith Oleson to fix SLATOP for generic crops fixing issue #1184 in https://github.com/ESCOMP/CTSM
Thu Nov  5 15:57:55 2020: ncks -A -v slatop /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c200923b_kwo.c201102.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc
Fri Oct 30 00:24:02 MDT 2020 : Changes from Keith Oleson including optical properties and PHS parameters, and snow compaction
Fri Oct 30 00:24:02 2020: ncks -A -v kmax,krmax,rholnir,rholvis,rhosnir,rhosvis,taulnir,taulvis,xl,ceta /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c200923b_kwo.c200924.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201030.nc
Sat Sep 26 19:59:18 MDT 2020 : Adding new scale factors from Keith Oleson and Danical Lomberdozzi
Sat Sep 26 19:59:18 2020: ncks -A -v jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200624_kwo.c200923.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200926.nc
Wed Sep 23 19:30:08 MDT 2020 : Adding new variable (season_decid_temperate) needed for the ARCTIC Luna changes from Leah Birch and modifying five others
Wed Sep 23 19:30:08 2020: ncks -A -v season_decid_temperate,froot_leaf,leafcn,leafcn_max,leafcn_min,slatop /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200425.slatopA_leafcnA_stemleafA_frtlfA_sdt_kwo.c200618.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200923b.nc
Wed Sep 23 17:46:22 MDT 2020 : Adding several new parameters from Keith Oleson for the hardcodep2 branch
Wed Sep 23 17:46:22 2020: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200624_kwo.c200904.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200923.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Wed Jan 13 22:55:31 2021: Appended file /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc had following "history" attribute:
Thu Nov  5 15:57:55 MST 2020 : Changes from Keith Oleson to fix SLATOP for generic crops fixing issue #1184 in https://github.com/ESCOMP/CTSM
Thu Nov  5 15:57:55 2020: ncks -A -v slatop /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c200923b_kwo.c201102.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201105.nc
Fri Oct 30 00:24:02 MDT 2020 : Changes from Keith Oleson including optical properties and PHS parameters, and snow compaction
Fri Oct 30 00:24:02 2020: ncks -A -v kmax,krmax,rholnir,rholvis,rhosnir,rhosvis,taulnir,taulvis,xl,ceta /glade/p/cgd/tss/people/oleson/modify_param/ctsm51_params.c200923b_kwo.c200924.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201030.nc
Sat Sep 26 19:59:18 MDT 2020 : Adding new scale factors from Keith Oleson and Danical Lomberdozzi
Sat Sep 26 19:59:18 2020: ncks -A -v jmax25top_sf,jmaxse_sf,tpuse_sf,vcmaxse_sf /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200624_kwo.c200923.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200926.nc
Wed Sep 23 19:30:08 MDT 2020 : Adding new variable (season_decid_temperate) needed for the ARCTIC Luna changes from Leah Birch and modifying five others
Wed Sep 23 19:30:08 2020: ncks -A -v season_decid_temperate,froot_leaf,leafcn,leafcn_max,leafcn_min,slatop /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200425.slatopA_leafcnA_stemleafA_frtlfA_sdt_kwo.c200618.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200923b.nc
Wed Sep 23 17:46:22 MDT 2020 : Adding several new parameters from Keith Oleson for the hardcodep2 branch
Wed Sep 23 17:46:22 2020: ncks -A -v bsw_sf,ceta,clay_pf,hksat_sf,rho_max,sand_pf,scvng_fct_mlt_sf,snowcan_unload_temp_fact,snowcan_unload_wind_fact,snw_rds_refrz,sucsat_sf,tau_ref,watsat_sf,wind_snowcompact_fact,xdrdt /glade/p/cgd/tss/people/oleson/modify_param/clm5_params.c200624_kwo.c200904.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c200923.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Tue Jan 12 00:15:05 2021: Appended file /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc had following "history" attribute:
Mon Jan 11 16:45:05 2021: ncks --exclude -v variantname /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.taper.c20210111.nc /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.tapervariant.c20210111.nc
Sun Dec 20 00:47:48 MST 2020 : Set new BHS variables over prognostic crop fields the same as for grass
Sun Dec 20 00:47:48 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201220.nc
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Sun Dec 20 00:47:48 2020: Appended file /glade/p/cgd/tss/people/erik/paramfiles/ctsm51_params.bhs4crop.c201218.nc had following "history" attribute:
Tue Dec 15 00:24:16 MST 2020 : New fields from Sean Swenson for biomass heat storage
Tue Dec 15 00:24:16 2020: ncks -A -v dbh,fbw,nstem,rstem,wood_density /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc /glade/p/cesmdata/cseg/inputdata/lnd/clm2/paramdata/ctsm51_params.c201215.nc
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
Tue Dec 15 00:24:16 2020: Appended file /glade/p/cgd/tss/people/erik/paramfiles/clm51_params.cpbiomass.c200905.nc had following "history" attribute:
Sat Sep  5 17:35:26 MDT 2020 : Add two new fire parameters (rswf_min and rswf_max), and modify fsr_pft by Fang Li
 started from clm5_0 params file: $CSMDATA/lnd/clm2/paramdata/clm5_params.c200624.nc
       w   C2_liq_Brun89                
_FillValue        �         	long_name         cConstant for liquid water grain growth [m3 s-1],from Brun89: corrected for LWC in units o
f percent    units         m3/s       mp   FUN_fracfixers                  
_FillValue        �         	long_name         QThe maximum fraction of assimilated carbon that can be used to pay for N fixation      units         fraction   coordinates       pftname      x mx   a_coef               
_FillValue        �         	long_name         #Drag coeff. under less dense canopy    units         unitless       o�   a_exp                
_FillValue        �         	long_name         %Drag exponent under less dense canopy      units         unitless       o�   a_fix                   
_FillValue        �         	long_name         CParameter 'a' of temp response of N fixation (Houlton et al.  2008)    units         unitless   coordinates       pftname      x p    accum_factor             
_FillValue        �         	long_name         6Accumulation constant for fractional snow covered area     units         unitless       rx   act25                
_FillValue        �         	long_name         &Specific activity of Rubisco at 25degC     units         mumol(CO2)/(gRubisco s)        r�   aereoxid             
_FillValue        �         comment       �Use with the namelist switch use_aereoxid_prog.  If use_aereoxid_prog is equal to false, then read aereoxid from this parameter file.  Set to value between 0 & 1 (inclusive) for sensitivity tests.   	long_name         bFraction of methane flux entering aerenchyma rhizosphere that will be oxidized rather than emitted     units         unitless       r�   
akc_active                  
_FillValue        �         	long_name         KConstant relating root C to arbuscular mycorrhizal root active uptake cost.    units         gC/m3      coordinates       pftname      x r�   
akn_active                  
_FillValue        �         	long_name         `Constant relating soil layer Nitrogen content to arbuscular mycorrhizal root active uptake cost.   units         gC/m2      coordinates       pftname      x u   aleaff                  
_FillValue        �         	long_name         ;Leaf Allocation coefficient parameter used in CNAllocationn    units         unitless   coordinates       pftname      x w�   allconsl                
_FillValue                   	long_name         @Leaf Allocation coefficient parameter power used in CNAllocation   units         unitless   coordinates       pftname      x y�   allconss                
_FillValue                   	long_name         @Stem Allocation coefficient parameter power used in CNAllocation   units         unitless   coordinates       pftname      x |p   aq_sp_yield_min              
_FillValue        �         	long_name         Min. aquifer specific yield    units         unitless       ~�   arootf                  
_FillValue                   	long_name         :Root Allocation coefficient parameter used in CNAllocation     units         unitless   coordinates       pftname      x ~�   arooti                  
_FillValue                   	long_name         :Root Allocation coefficient parameter used in CNAllocation     units         unitless   coordinates       pftname      x �h   astemf                  
_FillValue                   	long_name         :Stem Allocation coefficient parameter used in CNAllocation     units         unitless   coordinates       pftname      x ��   atmch4               
_FillValue        �         	long_name         RAtmospheric CH4 mixing ratio to prescribe if not provided by the atmospheric model     units         mol/mol        �X   b_fix                   
_FillValue        �         	long_name         CParameter 'b' of temp response of N fixation (Houlton et al.  2008)    units         1/C    coordinates       pftname      x �`   baset                   
_FillValue        �         	long_name         +Base Temperature, parameter used in accFlds    units         C      coordinates       pftname      x ��   bdnr             
_FillValue        �         	long_name         bulk denitrification rate      units         1/day          �P   bfact                   
_FillValue                   	long_name         FExponential factor used in CNAllocation for fraction allocated to leaf     units         unitless   coordinates       pftname      x �X   biofuel_harvfrac                
_FillValue        �         	long_name         ;Fraction of stem and leaf cut for harvest, sent to biofuels    units         unitless   coordinates       pftname      x ��   br_mr                
_FillValue        �         	long_name         %Base rate for maintenance respiration      units         gC/gN/s        �H   bsw_adjustfactor             
_FillValue        �         	long_name         Adjustment factor for bsw      units         unitless       �P   bsw_sf               
_FillValue        �         	long_name         Scale factor for bsw   units         unitless       �X   c3psn                   
_FillValue        �         	long_name         Photosynthetic pathway     units         flag   valid_range               ?�         flag_meanings         C4 C3      flag_values               ?�         coordinates       pftname      x �`   c_fix                   
_FillValue        �         	long_name         CParameter 'c' of temp response of N fixation (Houlton et al.  2008)    units         C      coordinates       pftname      x ��   capthick             
_FillValue        �         	long_name         7Minimum thickness before assuming h2osfc is impermeable    units         mm         �P   cc_dstem                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Combustion completeness factor for dead stem   coordinates       pftname      x �X   cc_leaf                 
_FillValue        ��?��R   units         0 to 1     	long_name         'Combustion completeness factor for leaf    coordinates       pftname      x ��   cc_lstem                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Combustion completeness factor for live stem   coordinates       pftname      x �H   cc_other                
_FillValue        ��?��R   units         0 to 1     	long_name         .Combustion completeness factor for other plant     coordinates       pftname      x ��   ceta             
_FillValue        �         units         kg/m3      	long_name         Overburden compaction constant         �8   ck                     
_FillValue        �         units         unitless   	long_name         weibull curve shape parameter      coordinates       segment pftname      	� �@   clay_pf              
_FillValue        �         	long_name         APerturbation factor  (via addition) for percent clay of clay+silt      units         percent        �    cn_s1                
_FillValue        �         	long_name         C:N for SOM pool 1     units         gC/gN          �(   	cn_s1_bgc                
_FillValue        �         	long_name         C:N for SOM 1      units         unitless       �0   cn_s2                
_FillValue        �         	long_name         C:N for SOM pool 2     units         gC/gN          �8   	cn_s2_bgc                
_FillValue        �         	long_name         C:N for SOM pool 2     units         gC/gN          �@   cn_s3                
_FillValue        �         	long_name         C:N for SOM pool 3     units         gC/gN          �H   	cn_s3_bgc                
_FillValue        �         	long_name         C:N for SOM pool 3     units         gC/gN          �P   cn_s4                
_FillValue        �         	long_name         C:N for SOM pool 4     units         gC/gN          �X   cnscalefactor                
_FillValue        �         	long_name         ;Scale factor on CN decomposition for assigning methane flux    units         unitless       �`   compet_decomp_nh4                
_FillValue        �         	long_name         0Relative competitiveness of immobilizers for NH4   units         unitless       �h   compet_decomp_no3                
_FillValue        �         	long_name         0Relative competitiveness of immobilizers for NO3   units         unitless       �p   compet_denit             
_FillValue        �         	long_name         0Relative competitiveness of denitrifiers for NO3   units         unitless       �x   
compet_nit               
_FillValue        �         	long_name         .Relative competitiveness of nitrifiers for NH4     units         unitless       ��   compet_plant_nh4             
_FillValue        �         	long_name         )Relative compettiveness of plants for NH4      units         unitless       ��   compet_plant_no3             
_FillValue        �         	long_name         )Relative compettiveness of plants for NO3      units         unitless       ��   cp25_yr2000              
_FillValue        �         	long_name         2CO2 compensation point at 25degC at present day O2     units         mol/mol        ��   cpha             
_FillValue        �         	long_name         Activation energy for cp   units         J/mol          ��   	crit_dayl                
_FillValue        �         	long_name         "Critical day length for senescence     units         seconds        ��   crit_offset_fdd              
_FillValue        �         	long_name         3Critical number of freezing days to initiate offset    units         days       ��   crit_offset_swi              
_FillValue        �         	long_name         7Critical number of water stress days to initiate offset    units         days       ��   crit_onset_fdd               
_FillValue        �         	long_name         3Critical number of freezing days to set gdd counter    units         days       ��   crit_onset_swi               
_FillValue        �         	long_name         .Critical number of days > soilpsi_on for onset     units         days       ��   
croot_stem                  
_FillValue        �         	long_name         6Allocation parameter: new coarse root C per new stem C     units         gC/gC      coordinates       pftname      x ��   crop                
_FillValue        �         	long_name         Binary crop PFT flag:      units         logical flag   valid_range               ?�         flag_values               ?�         flag_meanings         NOT_crop crop_PFT      coordinates       pftname      x �H   cryoturb_diffusion_k             
_FillValue        �         	long_name         ?The cryoturbation diffusive constant for vertical mixing of SOM    units         m^2/sec        ��   csoilc               
_FillValue        �         	long_name         'Drag coeff. for soil under dense canopy    units         unitless       ��   	csol_clay                
_FillValue        �         	long_name         Heat capacity of clay *10^6    units         J/K/m3         ��   csol_om              
_FillValue        �         	long_name          Heat capacity of peat soil *10^6   units         J/K/m3         ��   	csol_sand                
_FillValue        �         	long_name         Heat capacity of sand *10^6    units         J/K/m3         ��   cv               
_FillValue        �         	long_name         ?Turbulent transfer coeff. between canopy surface and canopy air    units         	m/s^(1/2)          ��   cwd_fcel             
_FillValue        �         	long_name         Cellulose fraction for CWD     units         unitless       ��   cwd_flig             
_FillValue        �         	long_name         &Lignin fraction of coarse woody debris     units         unitless       ��   d_max                
_FillValue        �         	long_name         Dry surface layer parameter    units         mm         �    dayscrecover             
_FillValue        �         	long_name         days to recover negative cpool     units         unitless       �   dbh                 
_FillValue        �         units         meters     	long_name         diameter at breast height      coordinates       pftname      x �   deadwdcn                
_FillValue        �         	long_name         #Dead wood (xylem and heartwood) C:N    units         gC/gN      coordinates       pftname      x ��   declfact                
_FillValue                   	long_name         3Decline factor for gddmaturity used in CNAllocation    units         unitless   coordinates       pftname      x �    decomp_depth_efolding                
_FillValue        �         	long_name         [e-folding depth for reduction in decomposition. Sset to large number for depth-independance    units         m          �x    denitrif_nitrateconc_coefficient             
_FillValue        �         	long_name         ;Multiplier for nitrate concentration for max denitrif rates    units         unitless       ��   denitrif_nitrateconc_exponent                
_FillValue        �         	long_name         9Exponent for nitrate concentration for max denitrif rates      units         unitless       ��    denitrif_respiration_coefficient             
_FillValue        �         	long_name         ?Multiplier for heterotrophic respiration for max denitrif rates    units         unitless       ��   denitrif_respiration_exponent                
_FillValue        �         	long_name         =Exponent for heterotrophic respiration for max denitrif rates      units         unitless       ��   depth_runoff_Nloss               
_FillValue        �         	long_name         BDepth over which runoff mixes with soil water for N loss to runoff     units         m          ��   displar                 
_FillValue        �         	long_name         1Ratio of displacement height to canopy top height      units         unitless   coordinates       pftname      x ��   dleaf                   
_FillValue        �         	long_name         Characteristic leaf dimension      units         m      coordinates       pftname      x �    dnp              
_FillValue        �         	long_name         Denitrification proportion     units         unitless       ��   drift_gs             
_FillValue        �         	long_name         8Wind drift compaction / grain size (fixed value for now)   units         unitless       ��   dsladlai                
_FillValue        �         	long_name         /Through canopy, projected area basis: dSLA/dLAI    units         m^2/gC     coordinates       pftname      x ��   e_ice                
_FillValue        �         	long_name         Soil ice impedance factor      units         unitless       �    ef_time              
_FillValue        �         	long_name         e-folding time constant    units         years          �(   
ekc_active                  
_FillValue        �         	long_name         DConstant relating root C to ectomycorrhizal root active uptake cost.   units         gC/m3      coordinates       pftname      x �0   
ekn_active                  
_FillValue        �         	long_name         YConstant relating soil layer Nitrogen content to ectomycorrhizal root active uptake cost.      units         gC/m2      coordinates       pftname      x ��   enzyme_turnover_daily                
_FillValue        �         	long_name         The daily turnover rate for photosynthetic enzyme at 25oC in view of ~7 days of half-life time for Rubisco (Suzuki et al. 2001)    units         unitless       �    eta0_anderson                
_FillValue        �         	long_name         &Viscosity coefficent from Anderson1976     units         kg*s/m2        �(   eta0_vionnet             
_FillValue        �         	long_name         %Viscosity coefficent from Vionnet2012      units         kg*s/m2        �0   	evergreen                   
_FillValue        �         	long_name         $Binary flag for evergreen leaf habit   units         logical flag   flag_meanings         NON-evergreen evergreen    flag_values               ?�         coordinates       pftname      x �8   f_ch4                
_FillValue        �         	long_name         1Ratio of CH4 production to total C mineralization      units         unitless       Ű   f_sat                
_FillValue        �         	long_name         PVolumetric soil water defining top of water table or where production is allowed   units         unitless       Ÿ   fbw                 
_FillValue        �         units         unitless   	long_name         !fraction of biomass that is water      coordinates       pftname      x ��   fcur                
_FillValue        �         	long_name         jAllocation parameter: fraction of allocation that goes to currently displayed growth, remainder to storage     units         fraction   coordinates       pftname      x �8   fcurdv                  
_FillValue        �         	long_name          Alternate fcur for use with CNDV   units         fraction   coordinates       pftname      x ʰ   fd_pft                  
_FillValue        ��?��R   units         hr     	long_name         Fire duration      coordinates       pftname      x �(   fff              
_FillValue        �         	long_name         *Decay factor for fractional saturated area     units         1/m        Ϡ   ffrootcn                
_FillValue        �         	long_name         Fine root C:N during organ fill    units         gC/gN      coordinates       pftname      x Ϩ   fleafcn                 
_FillValue        �         	long_name         Leaf C:N during organ fill     units         gC/gN      coordinates       pftname      x �    fleafi                  
_FillValue                   	long_name         CLeaf Allocation coefficient parameter fraction used in CNAllocation    units         unitless   coordinates       pftname      x Ԙ   flivewd                 
_FillValue        �         	long_name         SAllocation parameter: fraction of new wood that is live (phloem and ray parenchyma)    units         fraction   coordinates       pftname      x �   flnr                
_FillValue        �         	long_name         $Fraction of leaf N in Rubisco enzyme   units         fraction   coordinates       pftname      x و   fm_droot                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for dead roots   coordinates       pftname      x �    fm_dstem                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for dead roots   coordinates       pftname      x �x   fm_leaf                 
_FillValue        ��?��R   units         0 to 1     	long_name         &Fire-related mortality factor for leaf     coordinates       pftname      x ��   fm_lroot                
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for live roots   coordinates       pftname      x �h   fm_lstem                
_FillValue        ��?��R   units         0 to 1     	long_name         +Fire-related mortality factor for live stem    coordinates       pftname      x ��   fm_other                
_FillValue        ��?��R   units         0 to 1     	long_name         -Fire-related mortality factor for other plant      coordinates       pftname      x �X   fm_root                 
_FillValue        ��?��R   units         0 to 1     	long_name         ,Fire-related mortality factor for fine roots   coordinates       pftname      x ��   fnitr                   
_FillValue        �         	long_name         "Foliage nitrogen limitation factor     units         unitless   coordinates       pftname      x �H   fnps             
_FillValue        �         	long_name         8Fraction of light absorbed by non-photosynthetic pigment   units         unitless       ��   fnr              
_FillValue        �         	long_name         :Mass ratio of total Rubisco molecular mass to N in Rubisco     units         gRubisco/gN(Rubisco)       ��   fr_fcel                 
_FillValue        �         	long_name         #Fine root litter cellulose fraction    units         fraction   coordinates       pftname      x ��   fr_flab                 
_FillValue        �         	long_name          Fine root litter labile fraction   units         fraction   coordinates       pftname      x �H   fr_flig                 
_FillValue        �         	long_name          Fine root litter lignin fraction   units         fraction   coordinates       pftname      x ��   frac_sat_soil_dsl_init               
_FillValue        �         	long_name         DFraction of saturated soil for moisture value at which DSL initiates   units         unitless       �8   
froot_leaf                  
_FillValue        �         	long_name         4Allocation parameter: new fine root C per new leaf C   units         gC/gC      coordinates       pftname      x �@   frootcn                 
_FillValue        �         	long_name         Fine root C:N      units         gC/gN      coordinates       pftname      x ��   frootcn_max                 
_FillValue        �         	long_name         Maximum fine root CN ratio     units         gC/gN      coordinates       pftname      x �0   frootcn_min                 
_FillValue        �         	long_name         Minimum fine root CN ratio     units         gC/gN      coordinates       pftname      x ��   froz_q10             
_FillValue        �         	long_name         .Separate q10 for frozen soil respiration rates     units         unitless           fsr_pft                 
_FillValue        ��?��R   units         m/s    	long_name         Fire spread rate   coordinates       pftname      x (   fstemcn                 
_FillValue        �         	long_name         Stem C:N during organ fill     units         gC/gN      coordinates       pftname      x �   
fstor2tran               
_FillValue        �         	long_name         6Fraction of storage to move to transfer for each onset     units         unitless          fun_cn_flex_a                   
_FillValue        �         	long_name         WParameter 'a' of FUN-flexcn code linking leafCN content and N cost to FUN C expenditure    units         unitless   coordinates       pftname      x     fun_cn_flex_b                   
_FillValue        �         	long_name         RParameter 'b' of FUN-flexcn linking leafCN content and N cost to FUN C expenditure     units         unitless   coordinates       pftname      x �   fun_cn_flex_c                   
_FillValue        �         	long_name         SParameter 'c' of FUN-flexcn  linking leafCN content and N cost to FUN C expenditure    units         unitless   coordinates       pftname      x    
gddfunc_p1               
_FillValue        �         	long_name         8Parameter 1 to calculate GDD threshold as fn of annual T   units         unitless       �   
gddfunc_p2               
_FillValue        �         	long_name         8Parameter 2 to calculate GDD threshold as fn of annual T   units         unitless       �   gddmin                  
_FillValue                   	long_name         /Minimim growing degree days used in CNPhenology    units         unitless   coordinates       pftname      x �   graincn                 
_FillValue                   	long_name         	Grain C:N      units         gC/gN      coordinates       pftname      x    grnfill                 
_FillValue                   	long_name         (Grain fill parameter used in CNPhenology   units         unitless   coordinates       pftname      x �   grperc                  
_FillValue        �         	long_name         Growth respiration factor      units         unitless   coordinates       pftname      x     grpnow                  
_FillValue        �         	long_name         Growth respiration factor      units         unitless   coordinates       pftname      x x   highlatfact              
_FillValue        �         	long_name         'Multiple of qflxlagd for high latitudes    units         unitless       �   hksat_adjustfactor               
_FillValue        �         	long_name         Adjustment factor for hksat    units         unitless       �   hksat_sf             
_FillValue        �         	long_name         Scale factor for hksat     units         unitless           hybgdd                  
_FillValue                   	long_name         4Growing Degree Days for maturity used in CNPhenology   units         unitless   coordinates       pftname      x    i_flnr                  
_FillValue        �         	long_name         sintercept of the relationship between leaf N per unit area (gN/m2) and fraction leaf N in Rubisco (for vcmax_opt=4)    units         fraction   coordinates       pftname      x �   i_vcad                  
_FillValue        �         	long_name         aintercept of the relationship between leaf N per unit area (gN/m2) and Vcmax25top (umol CO2/m2/s)      units         umol CO2/m2/s      coordinates       pftname      x �   ignition_efficiency              
_FillValue        �         	long_name         Fignition efficiency of cloud-to-ground lightning for Li2016 fire model     units         count/flash        !p   	irrigated                   
_FillValue        �         	long_name         Binary Irrigated PFT flag      units         logical flag   valid_range               ?�         flag_meanings         NOT_irrigated irrigated    flag_values               ?�         coordinates       pftname      x !x   jmax25top_sf             
_FillValue        �         	long_name         Scale factor for jmax25top     units         unitless       #�   jmaxb0               
_FillValue        �         	long_name         @Baseline proportion of nitrogen allocated for electron transport   units         J          #�   jmaxha               
_FillValue        �         	long_name         Activation energy for jmax     units         J/mol          $    jmaxhd               
_FillValue        �         	long_name         Deactivation energy for jmax   units         J/mol          $   	jmaxse_sf                
_FillValue        �         	long_name         Scale factor for jmaxse    units         unitless       $   k_frag               
_FillValue        �         	long_name         Fragmentation rate for CWD     units         1/day          $   k_l1             
_FillValue        �         	long_name         Decomposition rate for litter 1    units         1/day          $    k_l2             
_FillValue        �         	long_name         Decomposition rate for litter 2    units         1/day          $(   k_l3             
_FillValue        �         	long_name         Decomposition rate for litter 3    units         1/day          $0   k_m              
_FillValue        �         	long_name         >Michaelis-Menten oxidation rate constant for CH4 concentration     units         mol/m3-w       $8   k_m_o2               
_FillValue        �         	long_name         =Michaelis-Menten oxidation rate constant for O2 concentration      units         mol/m3-w       $@   	k_m_unsat                
_FillValue        �         	long_name         >Michaelis-Menten oxidation rate constant for CH4 concentration     units         mol/m3-w       $H   k_mort               
_FillValue        �         	long_name         6Coefficient of growth efficiency in mortality equation     units         unitless       $P   k_nitr_max_perday                
_FillValue        �         	long_name         #Maximum nitrification rate constant    units         1/day          $X   k_s1             
_FillValue        �         	long_name         Decomposition rate for SOM 1   units         1/day          $`   k_s2             
_FillValue        �         	long_name         Decomposition rate for SOM 2   units         1/day          $h   k_s3             
_FillValue        �         	long_name         Decomposition rate for SOM 3   units         1/day          $p   k_s4             
_FillValue        �         	long_name         Decomposition rate for SOM 4   units         1/day          $x   	kc25_coef                
_FillValue        �         	long_name         +Michaelis-Menten constant at 25degC for CO2    units         mol/mol        $�   	kc_nonmyc                   
_FillValue        �         	long_name         DConstant relating root C to non-mycorrhizal root active uptake cost.   units         gC/m3      coordinates       pftname      x $�   kcha             
_FillValue        �         	long_name         Activation energy for kc   units         J/mol          '    kmax                   
_FillValue        �         units         9mm h2o (transpired)/mm h2o (water potential gradient)/sec      	long_name         plant segment max conductance      coordinates       segment pftname      	� '   	kn_nonmyc                   
_FillValue        �         	long_name         YConstant relating soil layer Nitrogen content to non-mycorrhizal root active uptake cost.      units         gC/m2      coordinates       pftname      x 0�   	ko25_coef                
_FillValue        �         	long_name         *Michaelis-Menten constant at 25degC for O2     units         mol/mol        3`   koha             
_FillValue        �         	long_name         Activation energy for ko   units         J/mol          3h   	kp25ratio                
_FillValue        �         	long_name         Ratio of kp25top to vcmax25top     units         unitless       3p   	kr_resorb                   
_FillValue        �         	long_name         IConstant relating leaf N of senesced leaves (gN/m2) to N resorption cost.      units         unitless   coordinates       pftname      x 3x   krmax                   
_FillValue        �         units         9mm h2o (transpired)/mm h2o (water potential gradient)/sec      	long_name         root segment max conductance   coordinates       pftname      x 5�   lai_dl               
_FillValue        �         	long_name         Plant litter area index    units         m2/m2          8h   laimx                   
_FillValue                   	long_name         1Maximum Leaf Area Index used in CNVegStructUpdate      units         unitless   coordinates       pftname      x 8p   lake_decomp_fact             
_FillValue        �         	long_name         -Base decomposition rate (1/s) at 25oC in lake      units         1/s        :�   	leaf_long                   
_FillValue        �         	long_name         Leaf longevity     units         years      coordinates       pftname      x :�   leafcn                  
_FillValue        �         	long_name         Leaf C:N   units         gC/gN      coordinates       pftname      x =h   
leafcn_max                  
_FillValue        �         	long_name         Maximum leaf CN ratio      units         gC/gN      coordinates       pftname      x ?�   
leafcn_min                  
_FillValue        �         	long_name         Minimum leaf CN ratio      units         gC/gN      coordinates       pftname      x BX   lf_fcel                 
_FillValue        �         	long_name         Leaf litter cellulose fraction     units         fraction   coordinates       pftname      x D�   lf_flab                 
_FillValue        �         	long_name         Leaf litter labile fraction    units         fraction   coordinates       pftname      x GH   lf_flig                 
_FillValue        �         	long_name         Leaf litter lignin fraction    units         fraction   coordinates       pftname      x I�   lfemerg                 
_FillValue                   	long_name         ,Leaf emergence parameter used in CNPhenology   units         unitless   coordinates       pftname      x L8   lflitcn                 
_FillValue        �         	long_name         Leaf litter C:N    units         gC/gN      coordinates       pftname      x N�   liq_canopy_storage_scalar                
_FillValue        �         	long_name         (Canopy-storage-of-liquid-water parameter   units         kg/m2          Q(   livewdcn                
_FillValue        �         	long_name         )Live wood (phloem and ray parenchyma) C:N      units         gC/gN      coordinates       pftname      x Q0   livewdcn_max                
_FillValue        �         	long_name         Maximum live wood CN ratio     units         gC/gN      coordinates       pftname      x S�   livewdcn_min                
_FillValue        �         	long_name         Minimum live wood CN ratio     units         gC/gN      coordinates       pftname      x V    lmr_intercept_atkin                 
_FillValue        �         	long_name         �Intercept in the calculation of the top of canopy leaf maintenance respiration base rate. Original values from Atkin et al. in prep 2016.      units         umol CO2/m**2/s    coordinates       pftname      x X�   lmrha                
_FillValue        �         	long_name         Activation energy for lmr      units         J/mol          [   lmrhd                
_FillValue        �         	long_name         Deactivation energy for lmr    units         J/mol          [   lmrse                
_FillValue        �         	long_name          Entropy term for lmr      units         J/mol/K        [    luna_theta_cj                
_FillValue        �         	long_name         JLUNA empirical curvature parameter for ac, aj photosynthesis co-limitation     units         unitless       [(   	lwtop_ann                
_FillValue        �         	long_name         Live wood turnover proportion      units         unitless       [0   	manunitro                   
_FillValue        �         	long_name         !Max manure to be applied in total      units         kg N/m2    coordinates       pftname      x [8   max_NH_planting_date                
_FillValue               	long_name         2Maximum planting date for the Northern Hemipsphere     units         YYYYMMDD   comment       �Typical U.S. latest planting dates according to AgroIBIS: Maize May 10th; soybean Jun 20th; spring wheat mid-May; winter wheat early Nov.      coordinates       pftname      < ]�   max_SH_planting_date                
_FillValue               	long_name         2Maximum planting date for the Southern Hemipsphere     units         YYYYMMDD   comment       6Same as max_NH_planting_date, but offset by six months     coordinates       pftname      < ^�   max_altdepth_cryoturbation               
_FillValue        �         	long_name         9Maximum active layer thickness for cryoturbation to occur      units         m          `(   max_altmultiplier_cryoturb               
_FillValue        �         	long_name         JRatio of the maximum extent of cryoturbation to the active layer thickness     units         unitless       `0   	maxpsi_hr                
_FillValue        �         	long_name         3Maximum soil water potential for heterotrophic resp    units         MPa        `8   mbbopt                  
_FillValue        �         	long_name         GBall-Berry slope of conductance-photosynthesis relationship, unstressed    units         umol H2O/umol CO2      coordinates       pftname      x `@   me_herb              
_FillValue        �         	long_name         7Moisture of extinction for herbaceous PFTs (proportion)    units         unitless       b�   me_woody             
_FillValue        �         	long_name         2Moisture of extinction for woody PFTs (proportion)     units         unitless       b�   medlynintercept                 
_FillValue        �         	long_name         ;Medlyn intercept of conductance-photosynthesis relationship    units         umol H2O   coordinates       pftname      x b�   medlynslope                 
_FillValue        �         	long_name         7Medlyn slope of conductance-photosynthesis relationship    units         umol H2O/umol CO2      comment       3Values come from the values used in the CABLE model    coordinates       pftname      x e@   mergetoclmpft                   
_FillValue               	long_name         CLM pft to merge this pft to   units         index      coordinates       pftname      < g�   min_NH_planting_date                
_FillValue               	long_name         2Minimum planting date for the Northern Hemipsphere     units         YYYYMMDD   comment       �Typical U.S. earliest planting dates according to AgroIBIS: Maize Apr 10th; soybean May 15th; spring wheat early Apr; winter wheat Sep 1st     coordinates       pftname      < h�   min_SH_planting_date                
_FillValue               	long_name         2Minimum planting date for the Southern Hemipsphere     units         YYYYMMDD   comment       6Same as min_NH_planting_date, but offset by six months     coordinates       pftname      < j0   min_planting_temp                   
_FillValue        @�@        	long_name         ;Average 5 day daily minimum temperature needed for planting    units         K      comment       7From AGROIBIS derived from EPIC model parameterizations    coordinates       pftname      x kl   minfuel              
_FillValue        �         	long_name         #Dead fuel threshold to carry a fire    units         gC/m2          m�   mino2lim             
_FillValue        �         	long_name         LMinimum anaerobic decomposition rate as a fraction of potential aerobic rate   units         unitless       m�   	minpsi_hr                
_FillValue        �         	long_name         3Minimum soil water potential for heterotrophic resp    units         MPa        m�   minrelh              
_FillValue        �         	long_name         3Minimum relative humidity for nitrogen optimization    units         fraction       m�   mu               
_FillValue        �         	long_name         'Threshold probability for surface water    units         unitless       n   mxmat                   
_FillValue               	long_name         ;Maximum number of days to maturity parameter in CNPhenology    coordinates       pftname    units         days     < n   mxtmp                   
_FillValue                   	long_name         *Max Temperature, parameter used in accFlds     units         C      coordinates       pftname      x oH   
n_baseflow               
_FillValue        �         	long_name         Drainage power law exponent    units         unitless       q�   n_melt_coef              
_FillValue        �         	long_name         N_melt parameter   units         unitless       q�   	ndays_off                
_FillValue        �         	long_name         &Number of days to complete leaf offset     units         days       q�   nongrassporosratio               
_FillValue        �         	long_name         KRatio of root porosity in non-grass to grass, used for aerenchyma transport    units         unitless       q�   nstem                   
_FillValue        �         units         
number m-2     	long_name         stem number    coordinates       pftname      x q�   
om_frac_sf               
_FillValue        �         	long_name         (Scale factor for organic matter fraction   units         unitless       tX   organic_max              
_FillValue        �         	long_name         KOrganic matter content where soil is assumed to act like peat for diffusion    units         kg/m3          t`   oxinhib              
_FillValue        �         	long_name         *Inhibition of methane production by oxygen     units         m^3/mol        th   pHmax                
_FillValue        �         	long_name         !Maximum pH for methane production      units         unitless       tp   pHmin                
_FillValue        �         	long_name         !Minimum pH for methane production      units         unitless       tx   pc               
_FillValue        �         	long_name         'Connectivity exponent for surface water    units         unitless       t�   pconv                   
_FillValue        �         	long_name         /Deadstem proportions to send to conversion flux    units         fraction   valid_range               ?�         comment       &pconv+pprod10+pprod100 must sum to 1.0     coordinates       pftname      x t�   pd               
_FillValue        �         	long_name         particle density of soil   units         kg/m3          w    perched_baseflow_scalar              
_FillValue        �         	long_name         ,Scalar multiplier for perched base flow rate   units         kg/m2/s        w   perecm                  
_FillValue        �         	long_name         FFraction of N uptake conducted via Ectomycorrhizal fungal associations     units         fraction   coordinates       pftname      x w   pftname                    	long_name         Description of plant type      units         unitless     X y�   pftnum                  	long_name         Plant Functional Type number   units         unitless   coordinates       pftname       � ��   pftpar20                
_FillValue        @Ç�3333   	long_name         Tree maximum crown area    units         m2     coordinates       pftname      x ��   pftpar28                
_FillValue        @Ç�3333   	long_name         (Minimum coldest monthly mean temperature   units         degrees_Celsius    coordinates       pftname      x ��   pftpar29                
_FillValue        @�@        	long_name         (Maximum coldest monthly mean temperature   units         degrees_Celsius    coordinates       pftname      x �p   pftpar30                
_FillValue        �         	long_name         1Minimum growing degree days (>= 5 degree Celsius)      units         degree_C_days      coordinates       pftname      x ��   pftpar31                
_FillValue        @�@        	long_name         7Upper limit of temperature of the warmest month (twmax)    units         degrees_Celsius    coordinates       pftname      x �`   phenology_soil_depth             
_FillValue        �         	long_name         ;Soil depth used for measuring states for phenology triggers    units         m      comment       GChosen to maintain current behavior with both CLM45 and CLM50 (layer 3)        ��   planting_temp                   
_FillValue        @�@        	long_name         .Average 10 day temperature needed for planting     units         K      comment       7From AGROIBIS derived from EPIC model parameterizations    coordinates       pftname      x ��   porosmin             
_FillValue        �         	long_name         Minimum aerenchyma porosity    units         unitless       �X   pprod10                 
_FillValue        �         	long_name         4Deadstem proportions to send to 10 year product pool   units         fraction   valid_range               ?�         comment       &pconv+pprod10+pprod100 must sum to 1.0     coordinates       pftname      x �`   pprod100                
_FillValue        �         	long_name         5Deadstem proportions to send to 100 year product pool      units         fraction   valid_range               ?�         comment       &pconv+pprod10+pprod100 must sum to 1.0     coordinates       pftname      x ��   pprodharv10                 
_FillValue                   	long_name         4Deadstem proportions to send to 10 year harvest pool   units         fraction   valid_range               ?�         comment       (100 year harvest is one minus this value   coordinates       pftname      x �P   prh30                
_FillValue        �         	long_name         ufactor related to dependence of fuel combustibility on 30-day running mean of relative humidity for Li2016 fire model      units         unitless       ��   psi50                      
_FillValue        �         units         mm     	long_name         *water potential at 50% loss of conductance     coordinates       segment pftname      	� ��   q10_ch4oxid              
_FillValue        �         	long_name         Q10 oxidation constant     units         unitless       ��   q10_hr               
_FillValue        �         	long_name         !Q10 for heterotrophic respiration      units         unitless       ��   q10_mr               
_FillValue        �         units         unitless   	long_name         Q10 for maintenance respiration        ��   q10ch4               
_FillValue        �         	long_name         Q10 for methane production     units         unitless       ��   
q10ch4base               
_FillValue        �         	long_name         KTemperature at which the effective f_ch4 actually equals the constant f_ch4        ��   q10lakebase              
_FillValue        �         	long_name         (Base temperature for lake CH4 production   units         K          ��   qflxlagd             
_FillValue        �         	long_name         EDays to lag time-lagged surface runoff (qflx_surf_lag) in the tropics      units         days       ��   r_mort               
_FillValue        �         	long_name         Mortality rate     units         1/year         ��   rc_npool             
_FillValue        �         	long_name         'resistance for uptake from plant n pool    units         unitless       ��   redoxlag             
_FillValue        �         	long_name         :Number of days to lag in the calculation of finundated_lag     units         days       ��   redoxlag_vertical                
_FillValue        �         	long_name         BTime lag (days) to inhibit production for newly unsaturated layers     units         days       �    relhExp              
_FillValue        �         	long_name         DSpecifies the impact of relative humidity on electron transport rate   units         unitless       �   rf_cwdl2_bgc             
_FillValue        �         	long_name         )respiration fraction from CWD to litter 2      units         unitless       �   rf_cwdl3_bgc             
_FillValue        �         	long_name         )respiration fraction from CWD to litter 3      units         unitless       �   rf_l1s1              
_FillValue        �         	long_name         *Respiration fraction for litter 1 -> SOM 1     units         unitless       �    rf_l1s1_bgc              
_FillValue        �         	long_name         *Respiration fraction for litter 1 -> SOM 1     units         unitless       �(   rf_l2s1_bgc              
_FillValue        �         	long_name         &respiration fraction litter 2 to SOM 1     units         unitless       �0   rf_l2s2              
_FillValue        �         	long_name         *Respiration fraction for litter 2 -> SOM 2     units         unitless       �8   rf_l3s2_bgc              
_FillValue        �         	long_name         +respiration fraction from litter 3 to SOM 2    units         unitless       �@   rf_l3s3              
_FillValue        �         	long_name         *Respiration fraction for litter 3 -> SOM 3     units         unitless       �H   rf_s1s2              
_FillValue        �         	long_name         'Respiration fraction for SOM 1 -> SOM 2    units         unitless       �P   rf_s2s1_bgc              
_FillValue        �         	long_name         #respiration fraction SOM 2 to SOM 1    units         unitless       �X   rf_s2s3              
_FillValue        �         	long_name         'Respiration fraction for SOM 2 -> SOM 3    units         unitless       �`   rf_s2s3_bgc              
_FillValue        �         	long_name         'Respiration fraction for SOM 2 -> SOM 3    units         unitless       �h   rf_s3s1_bgc              
_FillValue        �         	long_name         #respiration fraction SOM 3 to SOM 1    units         unitless       �p   rf_s3s4              
_FillValue        �         	long_name         'Respiration fraction for SOM 3 -> SOM 4    units         unitless       �x   rho_max              
_FillValue        �         	long_name         'Wind drift compaction / maximum density    units         kg/m3          ��   rholnir                 
_FillValue        �         	long_name         Leaf reflectance: near-IR      units         fraction   coordinates       pftname      x ��   rholvis                 
_FillValue        �         	long_name         Leaf reflectance: visible      units         fraction   coordinates       pftname      x �    rhosnir                 
_FillValue        �         	long_name         Stem reflectance: near-IR      units         fraction   coordinates       pftname      x �x   rhosvis                 
_FillValue        �         	long_name         Stem reflectance: visible      units         fraction   coordinates       pftname      x ��   	rij_kro_a                
_FillValue        �         	long_name         CBest-fit parameter of simple-structure model (Arah and Vinten 1995)    units         unitless       �h   rij_kro_alpha                
_FillValue        �         	long_name         7Simple-structure model parameter (Arah and Vinten 1995)    units         unitless       �p   rij_kro_beta             
_FillValue        �         	long_name         7Simple-structure model parameter (Arah and Vinten 1995)    units         unitless       �x   rij_kro_delta                
_FillValue        �         	long_name         7Simple-structure model parameter (Arah and Vinten 1995)    units         unitless       ��   rij_kro_gamma                
_FillValue        �         	long_name         7Simple-structure model parameter (Arah and Vinten 1995)    units         unitless       ��   rob              
_FillValue        �         	long_name         7Ratio of root length to vertical depth (root obliquity)    units         unitless       ��   root_dmx                
_FillValue        �         	long_name         maximum rooting depth of crops     units         m      coordinates       pftname      x ��   	roota_par                   
_FillValue        �         	long_name         "CLM rooting distribution parameter     units         1/m    coordinates       pftname      x �   	rootb_par                   
_FillValue        �         	long_name         "CLM rooting distribution parameter     units         1/m    coordinates       pftname      x ��   rootlitfrac              
_FillValue        �         	long_name         5Fraction of soil organic matter associated with roots      units         unitless       �    rootprof_beta                      
_FillValue        �         	long_name         ;Rooting beta parameter, for C and N vertical discretization    units         unitless   coordinates       variantnames pftname     � �   rstem                   
_FillValue        �         units         s m-2      	long_name         *stem resistance to heat transfer (per dbh)     coordinates       pftname      x ��   rswf_max                
_FillValue        �         	long_name         +max. root-zone soil wetness for fire module    units         unitless   coordinates       pftname      x �p   rswf_min                
_FillValue        �         units         unitless   	long_name         +min. root-zone soil wetness for fire module    coordinates       pftname      x ��   s_fix                   
_FillValue        �         	long_name         $Baseline cost of N fixation in gC/gN   units         gC/gN      coordinates       pftname      x �`   s_flnr                  
_FillValue        �         	long_name         oslope of the relationship between leaf N per unit area (gN/m2) and fraction leaf N in Rubisco (for vcmax_opt=4)    units         fraction/gN/m2     coordinates       pftname      x ��   s_vcad                  
_FillValue        �         	long_name         ]slope of the relationship between leaf N per unit area (gN/m2) and Vcmax25top (umol CO2/m2/s)      units         umol CO2/s/gN      coordinates       pftname      x �P   sand_pf              
_FillValue        �         	long_name         3Perturbation factor (via addition) for percent sand    units         percent        ��   satpow               
_FillValue        �         	long_name         6Exponent on watsat for saturated soil solute diffusion     units         unitless       ��   scale_factor_aere                
_FillValue        �         	long_name         9Scale factor on the aerenchyma area for sensitivity tests      units         unitless       ��   scale_factor_gasdiff             
_FillValue        �         	long_name         Scale factor for gas diffusion     units         unitless       ��   scale_factor_liqdiff             
_FillValue        �         	long_name         3Scale factor for solute diffusion in liquid (water)    units         unitless       ��   scvng_fct_mlt_sf             
_FillValue        �         	long_name         _Scaling factor modifying scavenging factors for BC, OC, and dust species inclusion in meltwater    units         unitless       ��   season_decid                
_FillValue        �         	long_name         -Binary flag for seasonal-deciduous leaf habit      units         logical flag   flag_meanings         NOT seasonal-deciduous     flag_values               ?�         coordinates       pftname      x ��   season_decid_temperate                  
_FillValue        �         	long_name         7Binary flag for seasonal-deciduous temperate leaf habit    units         logical flag   flag_meanings          NOT seasonal-deciduous temperate   flag_values               ?�         coordinates       pftname      x �p   segment                   units         unitless   	long_name          description of hydraulic segment      � ��   sf_minn              
_FillValue        �         	long_name         Soluble fraction of mineral N      units         unitless       ҈   sf_no3               
_FillValue        �         	long_name         Soluble fraction of NO3    units         unitless       Ґ   shape_fluxprof_param1                
_FillValue        �         	long_name         .Shape parameter of advection/diffusion profile     units         unitless       Ҙ   slatop                  
_FillValue        �         	long_name         ?Specific Leaf Area (SLA) at top of canopy, projected area basis    units         m^2/gC     coordinates       pftname      x Ҡ   	slopebeta                
_FillValue        �         	long_name         &Exponent for microtopography pdf sigma     units         unitless       �   slopemax             
_FillValue        �         	long_name         3Max topographic slope for microtopography pdf sigma    units         unitless       �    smp_crit             
_FillValue        �         	long_name         sCritical soil moisture potential to reduce oxidation (mm) due to dessication of methanotrophs above the water table    units         mm         �(   smpsc                   
_FillValue        �         	long_name         -Soil water potential at full stomatal closure      units         mm     coordinates       pftname      x �0   smpso                   
_FillValue        �         	long_name         -Soil water potential at full stomatal opening      units         mm     coordinates       pftname      x ר   snow_canopy_storage_scalar               
_FillValue        �         	long_name          Canopy-storage-of-snow parameter   units         kg/m2          �    snowcan_unload_temp_fact             
_FillValue        �         	long_name         &Temperature canopy snow unload scaling     units         K*s        �(   snowcan_unload_wind_fact             
_FillValue        �         	long_name         Wind canopy snow unload scaling    units         unitless       �0   snw_rds_refrz                
_FillValue        �         	long_name         "Effective radius of re-frozen snow     units         microns        �8   soilpsi_off              
_FillValue        �         	long_name         -Critical soil water potential for leaf offset      units         MPa        �@   
soilpsi_on               
_FillValue        �         	long_name         ,Critical soil water potential for leaf onset   units         MPa        �H   
som_diffus               
_FillValue        �         	long_name         MVertical soil organic matter diffusion coefficient for flat adv/diff profile       units         m^2/sec        �P   ssi              
_FillValue        �         	long_name         $Irreducible water saturation of snow   units         unitless       �X   	stem_leaf                   
_FillValue        �         	long_name         VAllocation parameter: new stem C per new leaf C (-1 means use dynamic stem allocation)     units         gC/gC      coordinates       pftname      x �`   stress_decid                
_FillValue        �         	long_name         +Binary flag for stress-deciduous leaf habit    units         logical flag   valid_range               ?�         flag_values               ?�         flag_meanings         NOT stress_decidious   coordinates       pftname      x ��   sucsat_adjustfactor              
_FillValue        �         	long_name         Adjustment factor for sucsat   units         unitless       �P   	sucsat_sf                
_FillValue        �         	long_name         Scale factor for sucsat    units         unitless       �X   surface_tension_water                
_FillValue        �         	long_name         /Surface tension of water (Arah and Vinten 1995)    units         J/m^2          �`   taper                   
_FillValue        �         	long_name         -Tapering ratio of height:radius_breast_height      units         unitless   coordinates       pftname      x �h   tau_cwd              
_FillValue        �         	long_name         1Corrected fragmentation rate constant CWD (1/0.3)      units         1/year         ��   tau_l1               
_FillValue        �         	long_name         %1/Turnover time of  litter 1 (1/18.5)      units         1/year         ��   	tau_l2_l3                
_FillValue        �         	long_name         11/Turnover time of  litter 2 and litter 3 (1/4.9)      units         1/year         ��   tau_ref              
_FillValue        �         	long_name         0Wind drift compaction / reference time (48*3600)   units         s          ��   tau_s1               
_FillValue        �         	long_name         61/Turnover time of soil organic matter (SOM) 1 (1/7.3)     units         1/year         �    tau_s2               
_FillValue        �         	long_name         61/Turnover time of soil organic matter (SOM) 2 (1/0.2)     units         1/year         �   tau_s3               
_FillValue        �         	long_name         91/Turnover time of soil organic matter (SOM) 3 (1/0.0045)      units         1/year         �   taulnir                 
_FillValue        �         	long_name         Leaf transmittance: near-IR    units         fraction   coordinates       pftname      x �   taulvis                 
_FillValue        �         	long_name         Leaf transmittance: visible    units         fraction   coordinates       pftname      x �   tausnir                 
_FillValue        �         	long_name         Stem transmittance: near-IR    units         fraction   coordinates       pftname      x �   tausvis                 
_FillValue        �         	long_name         Stem transmittance: visible    units         fraction   coordinates       pftname      x �   theta_cj                
_FillValue        �         	long_name         EEmpirical curvature parameter for ac, aj photosynthesis co-limitation      units         unitless   coordinates       pftname      x ��   theta_ip             
_FillValue        �         	long_name         AEmpirical curvature parameter for ap photosynthesis co-limitation      units         unitless       �p   
theta_psii               
_FillValue        �         	long_name         9Empirical curvature parameter for electron transport rate      units         unitless       �x   tkd_clay             
_FillValue        �         	long_name         Thermal conductivity of clay   units         W/m/K          �   tkd_om               
_FillValue        �         	long_name         *Thermal conductivity of dry organic matter     units         W/m/K          �   tkd_sand             
_FillValue        �         	long_name         Thermal conductivity of sand   units         W/m/K          �   tkm_om               
_FillValue        �         	long_name         &Thermal conductivity of organic matter     units         W/m/K          �   
tpu25ratio               
_FillValue        �         	long_name         Ratio of tpu25top to vcmax25top    units         unitless       �   tpuha                
_FillValue        �         	long_name         Activation energy for tpu      units         J/mol          �   tpuhd                
_FillValue        �         	long_name         Deactivation energy for tpu    units         J/mol          �   tpuse_sf             
_FillValue        �         	long_name         Scale factor for tpuse     units         unitless       �   unsat_aere_ratio             
_FillValue        �         	long_name         XRatio to multiply upland vegetation aerenchyma porosity by compared to inundated systems   units         unitless       ��   variantnames                  
_FillValue               	long_name         Description of variant names   units         unitless      P ��   vcmaxha              
_FillValue        �         	long_name         Activation energy for vcmax    units         J/mol          �   vcmaxhd              
_FillValue        �         	long_name         Deactivation energy for vcmax      units         J/mol          �    
vcmaxse_sf               
_FillValue        �         	long_name         Scale factor for vcmaxse   units         unitless       �(   vgc_max              
_FillValue        �         	long_name         2Ratio of saturation pressure triggering ebullition     units         unitless       �0   vmax_ch4_oxid                
_FillValue        �         	long_name         Oxidation rate constant    units         
mol/m3-w/s         �8   vmax_oxid_unsat              
_FillValue        �         	long_name         Oxidation rate constant    units         
mol/m3-w/s         �@   watsat_adjustfactor              
_FillValue        �         	long_name         Adjustment factor for watsat   units         unitless       �H   	watsat_sf                
_FillValue        �         	long_name         Scale factor for watsat    units         unitless       �P   wc2wjb0              
_FillValue        �         	long_name         WThe baseline ratio of rubisco limited rate vs light limited photosynthetic rate (Wc:Wj)    units         unitless       �X   wcf              
_FillValue        �         	long_name         Wood combustion fraction   units         unitless       �`   wimp             
_FillValue        �         	long_name         ,Water impremeable if porosity less than wimp   units         unitless       �h   wind_min             
_FillValue        �         	long_name         4Minimum wind speed at the atmospheric forcing height   units         m/s        �p   wind_snowcompact_fact                
_FillValue        �         	long_name         JReference wind above which fresh snow density is (substantially) increased     units         m/s        �x   wood_density                
_FillValue        �         units         kg m-3     	long_name         wood density   coordinates       pftname      x �   woody                   
_FillValue        �         	long_name         Binary woody lifeform flag     units         logical flag   valid_range               ?�         flag_values               ?�         flag_meanings         NON_woody woody    coordinates       pftname      x ��   xdrdt                
_FillValue        �         	long_name         +Arbitrary factor applied to snow aging rate    units         unitless       �p   xl                  
_FillValue        �         	long_name         Leaf/stem orientation index    units         unitless   valid_range       ��      ?�         coordinates       pftname      x �x   z0mr                
_FillValue        �         	long_name         7Ratio of momentum roughness length to canopy top height    units         unitless   coordinates       pftname      x ��   z_dl             
_FillValue        �         	long_name         Litter layer thickness     units         m          �h   zbedrock             
_FillValue        �         units         m      	long_name         Depth to bedrock   note      �This parameter is used to overwrite the zbedrock from the surface dataset if the param is >=0. Default value is -1, which leaves zbedrock from fsurdat.        �p   zbedrock_sf              
_FillValue        �         units         unitless   	long_name         !Zbedrock scalar adjustment factor      note      KThis parameter multiplies the zbedrock from the surface dataset. Default=1.        �x   zlnd             
_FillValue        �         	long_name         5Momentum roughness length for soils, glacier, wetland      units         m          ��   zsno             
_FillValue        �         	long_name         "Momentum roughness length for snow     units         m          ��   ztopmx                  
_FillValue                   	long_name         0Canopy top coefficient used in CNVegStructUpdate   units         m      coordinates       pftname      x ��   crit_onset_gdd_sf                   
_FillValue        �         	long_name         Scale factor for crit_onset_gdd    units         unitless   coordinates       pftname      x �   ndays_on             
_FillValue        �         	long_name         %Number of days to complete leaf onset      units         days       ��=]��W�        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                      ?�      ?�      ?�      ?�                      ?�      ?�      ?���
=p�?�������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������������?�������@N                      ?��Q��?��Q��?��Q��?��Q��?��Q��?x�t�j~�?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?��Q��?��Q��?�333333?�333333?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?�333333?��Q��?��Q��?�333333?�333333?�333333?�333333?�333333?�333333?��Q��?��Q��        ?��Q��?��Q��?��Q��?��Q��?��Q��?��t�j~�?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?��Q��?��Q��?�333333?�333333?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?�333333?��Q��?��Q��?�333333?�333333?�333333?�333333?�333333?�333333?��Q��?��Q��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @      @      @      @      @      @      @       @       @      @      @      @      @      @      @      @                                                                      @       @                                                                                                                                                       @      @                                      @      @                      @      @      @      @      @      @      @       @                                                                                                                                               @       @       ?�      ?�      ?�      ?�      @      @      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                      @      @                                                                                                                                                      ?�      ?�                                      @       @                       @       @       @       @       @       @       @      @      ?�z�G�{                                                                                                                                        ?�������?�������                                ?ə�����?ə�����                                                                                                                                ?ə�����?ə�����                                                                                                                                                                                                ?�������?�������                ?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�������?�������?ə�����?ə�����                                                                                                                                        ?�������?�������?�������?�������?ə�����?ə�����?ə��   ?ə��   ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333                                                                ?ə��   ?ə��                                                                                                                                                   ?����   ?����                                   ?�������?�������                ?�(�\)?�(�\)?���Q�?���Q�?�������?�������?ə��   ?ə��                                                                                                                                                           ?�������?�������?�������?�������?�333333?�333333?�������?�������?�������?�������?�������?�������?�������?�������                                                                ?�333333?�333333                                                                                                                                                ?�������?�������                                                                                                                ?�333333?�333333>��q�hz=?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����?�G����                                                                                                                                        @       @                                       @$      @$                                                                                                                                      @$      @$                                                                                                                                                      @$      @$                                      @$      @$                      @       @       @       @       @$      @$      @$      @$      ?�                                                                                                                                              ?�������?���������      ��      �$      �$      ?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ?�ffffff?�ffffff?�ffffff?�ffffff                                >�.en�O?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�                      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                      ?�      ?�                                                      ?�      ?�      @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @9&f`  @Y              ?�333333?�333333?�333333?�G�z�H?�G�z�H?�G�z�H?�G�z�H?�G�z�H?�ffffff?�ffffff?�ffffff?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�333333?�333333?�333333?�G�z�H?�G�z�H?�G�z�H?�G�z�H?�G�z�H?�ffffff?�ffffff?�ffffff?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�      ?�      ?�      ?�������?�������?�������?�������?�������?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����@v`             @������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������        @������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������        @������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������        @������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������        @(      @       @(      @&      @$      @&      @$      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?i�г[@�x�    @�0�    @.      @.      @.      @.      ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      =�n���s ?pbM���@z�G�@      @$�/�?�z�G�{?�Q��R?θQ��@.      @>              ?�333333?�333333?�333333?ٙ�����?�      ?ٙ�����?�      ?�333333?�������?�������?�������?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�bM���?�      @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@                                             @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@                                                                                                                                             ?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������@$      ?�ffffff?�=p��
=?�������?�������?�������        ?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�p��
=q?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��?�\(��        ?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?6�����        ?Tz�G�{?PbM���?h�t�j~�?S�x�?X�t�j~�?fOv_خ?fOv_خ?fOv_خ                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                @      ?�              ?�
=p��
?�
=p��
?�n��O�;?�
=p��
?�
=p��
?�n��O�;?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
@������?�
=p��
?�
=p��
@������@������?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
@������@������?�
=p��
?�
=p��
@������@������@������@������@������@������?�
=p��
?�
=p��
        ?��Q��?��Q��?x�t�j~�?��Q��?��Q��?x�t�j~�?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?��Q��?��Q��?�333333?�333333?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�333333?�333333?��Q��?��Q��?�333333?�333333?�333333?�333333?�333333?�333333?��Q��?��Q��?�������A+w@    A]��           ?�      ?�              ?�      ?�                              ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ?ə�����?�ffffff        ?�������?�������?�������?�333333?�333333?�333333?�333333?�������?�      ?�      ?�      ?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff?�ffffff        ?�      ?�              ?�      ?�                              ?�                                                              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ?�      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8                     @D      @D      @D      @D                      @D      @D      @D      @D      @D      @D      @D      @D      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8                     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @D      @D      @�8     @�8     @�8     @�8                     @�8     @�8                                                                     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@     @P@                                                                                                                                             ?�333333?�333333?��̿���?��̿���?陙�   ?陙�   ?�333333?�333333?�      ?�      ?�333333?�333333?�      ?�      ?�333333?�333333                                                                ?�333333?�333333                                                                                                                                                ?�      ?�                                      ?�333333?�333333                ?�������?�������?�ffffff?�ffffff?�333333?�333333?�333333?�333333        ?�������?�������?�������?�������?�������?�������?�������?�������?�      ?�      ?�������                                        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?������?�����$?����#�?��kP��|?�^5?|�?�T`�d��?��y��?��y��?�xl"h	�?�$xF�?�$xF�?�x���F?�x���F?�
=p��
?ƀ�IQ��?ƀ�IQ��?���n��?���n��?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�?�@��4m�                                                                ?�@��4m�?�@��4m�                                                                                                                                                ?�@��4m�?�@��4m�                                ?���n��?���n��                ?���n��?���n��?���n��?���n��?���n��?���n��?�@��4m�?�@��4m�        ?�333333?�333333?�333333?���
=p�?���
=p�?�������?�������?���
=p�?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����        ?�333333?�333333?�333333?���
=p�?���
=p�?�������?�������?���
=p�?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����        ?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�333333?�333333?�333333?���
=p�?���
=p�?�������?�������?���
=p�?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����        ?�      ?�      ?�      ?�������?�������?�ffffff?�ffffff?�������?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�      ?�      ?�      ?�������?�������?�ffffff?�ffffff?�������?ᙙ����?ᙙ����?ᙙ����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����?陙����        ?�333333?�333333?�333333?���
=p�?���
=p�?�������?�������?���
=p�?�\(��?�\(��?�\(��?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����?ə�����        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�333333@��
=p�        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?陙����        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       ?�      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      @E      ?�      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J      @J                                                                                                                                                                                                                                                                                                                                                                                      @J      @J      @J      @J                                      ?�      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@      @@                                                                                                                                                                                                                                                                                                                                                                                      @@      @@      @@      @@                                      ?�              ?�
=p��
?�
=p��
?�
=p��
?�      ?�(�\)?�      ?�(�\)?�(�\)?�      ?�      ?�������?�������?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{@�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @^      @^      @Y      @Y      @Y      @Y      @`@     @`@     @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @`@     @`@     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @Y      @Y      @�8     @�8     @�8     @�8     @^      @^      @�8     @�8     @^      @^      @^      @^      @^      @^      @`@     @`@     ?�      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @       @@     @@     @@     @@     @       @       @       @       @333333?���
=p�                                                                                                                                        @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I                                                                                                                                              @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I                                                                                                                                              ?�������?�������?�333333?�333333?ٙ�����?ٙ�����?�      ?�      ?�333333?�333333?ٙ�����?ٙ�����?�333333?�333333?ٙ�����?ٙ�����                                                                ?�      ?�                                                                                                                                                      ?ٙ��   ?ٙ��                                   ?�������?�������                ?ٙ�����?ٙ�����?ٙ�����?ٙ�����?�      ?�      ?�      ?�      ?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�(�\)?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @       ?�      ?�                                                                                                                                              @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��     @��                                                                     @��     @��                                                                                                                                                     @�h     @�h                                     @��     @��                     @��     @��     @��     @��     @�      @�      @�h     @�h             ?θQ��?θQ��?θQ��?�
=p��
?θQ��?�
=p��
?θQ��?θQ��?ə�����?ə�����?ə�����?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�                                                                                                                                                                                                                                                                                                                                                                                ?���Q�?���Q�?���Q�?���Q�                                        @G�z�H@G�z�H@G�z�H@>�z�G�@��Q�@\(��@��Q�@��Q�@-k��Q�@-k��Q�@-k��Q�@�z�G�@�z�G�@	�z�G�@�
=p��@�
=p��@	�z�G�@	�z�G�@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@�
=p��@	�z�G�@	�z�G�@�
=p��@�
=p��@-k��Q�@-k��Q�@�z�G�@�z�G�@	�z�G�@	�z�G�@�
=p��@�
=p��?�(�\)                                                                                                                                ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�              ?�      ?�      ?�ح��U�@�j     Aj     ?�      ?Pdg��_?�Cx���2?���0_�~?����,?tz�G�{?�z�G�{?@bM���?�333333?�������?���0_�~?����,?V�#����?78���?:�B%        ?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�n��O�;?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
@������?�
=p��
?�
=p��
@������@������?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
?�
=p��
@������@������?�
=p��
?�
=p��
?�
=p��
?�
=p��
@������@������@������@������?�
=p��
?�
=p��
@�d`            >Q3��-D�>W�Y�T>S8s��h>a�;���>[�3מ��>e���3}>Z�]z��v>]U�M��>H�	6��z>%���3}>1��Oഁ>$�J�G�/>!3��-D�>;m��>V���U>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:        >Q3��-D�>W�Y�T>S8s��h>a�;���>[�3מ��>e���3}>Z�]z��v>]U�M��>H�	6��z>%���3}>1��Oഁ>$�J�G�/>!3��-D�>;m��>V���U>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:        >Q3��-D�>W�Y�T>S8s��h>a�;���>[�3מ��>e���3}>Z�]z��v>]U�M��>H�	6��z>%���3}>1��Oഁ>$�J�G�/>!3��-D�>;m��>V���U>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:        >Q3��-D�>W�Y�T>S8s��h>a�;���>[�3מ��>e���3}>Z�]z��v>]U�M��>H�	6��z>%���3}>1��Oഁ>$�J�G�/>!3��-D�>;m��>V���U>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:>Uy��0�:        ?��t�j~�?��t�j~�?S�*0U2a?��t�j~�?��t�j~�?S�*0U2b?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��Q��?��t�j~�?��t�j~�?��Q��?��Q��?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��Q��?��Q��?��t�j~�?��t�j~�?��t�j~�?��t�j~�?��Q��?��Q��?��Q��?��Q��?��t�j~�?��t�j~�?��N;�5�@�À    @ӈ     @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8      @8              =��[�=�0���=ݝ�iC�=���Q�e�=��Z��I�>->2q��'=܆�3"�Y=�(�S��(>��;A>dD��)��=ɉܐy��=� �iD�>VNI)�4>_�����>l'>�4�>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳>J�+�׳?�                                                                                                                                              @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @                                                                      @      @                                                                                                                                                      @      @                                      @      @                      @$      @$      @      @      @      @      @      @      =ؽ/ݨ�(        @
y,_���@
y,_���?�6�i�7?�p��
=p?�p��
=p?�������?�������?�������?�,_���-?��\(�?��\(�?Ԉ�����?Ԉ�����?���Q�?Ԉ�����?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @M      @M      @9�(-vЍ@=�r�	@=�r�	@7s���0�@7s���0�@7s���0�@B5SX19=@7A}��@5ffffff@4�33333@<�L�08@A�*��@<�L�08@9      @9      @9      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @4      @9      @9      @4      @4      @4      @4      @4      @4      @9      @9      @4      @4      ?�      @F�     @I      @A�     @D      @D      @A�     @A�     @A�     @D      @A�     @?ffffff@>�33333@A�     @A�     @A�     @A�     @A�     @A�     @A�     @A�     @A�     @A�     @A�     @A�                                                                                                                                                                                                                                                                                                                                                                                                                                                     ?�      @9      @>      @.      @4      @4      @.      @.      @.      @4      @.      @&������@%ffffff@.      @.      @.      @.      @.      @.      @.      @.      @.      @.      @.      @.                                                                                                                                                                                                                                                                                                                                                                                                                                                              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                                                              ?��Q��?��Q��?�������?�������?��Q��?��Q��?��Q��?��Q��?�������?�������?�������?�������?�������?�������?�������?�������                                                                ?��Q��?��Q��                                                                                                                                                ?�z�@   ?�z�@                                   ?��Q��?��Q��                ?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�      @Q�     @T      @I      @N      @N      @I      @I      @I      @N      @I      @I      @I      @I      @I      @I      @I      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      @9      ?�������?�      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I                                              @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      @I      ?�      @N      @N      @N      @N      @N      @N      @N      @N      @N      @N      @N                                              @N      @N      @N      @N      @N      @N      @N      @N                                                                                                                                                                                                                                                                                                                                                                                      @N      @N      @N      @N                                      ?�      @D      @D      @D      @D      @D      @D      @D      @D      @D      @D      @D                                              @D      @D      @D      @D      @D      @D      @D      @D                                                                                                                                                                                                                                                                                                                                                                                      @D      @D      @D      @D                                              ?���E��?���E��?���E��?��t�j?��t�j?��t�j?��t�j?��t�j@ �e+��a@ �e+��a@ �e+��a@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@������@��    Ac�    @~�     ?�ffffff?�ffffff                                                                                                                                        ?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���?`bM���                                                                      g  g  g  g  j  j  g  g  g  g  j  j  g  g  j  j                                                                                                               �   �                  K  K          g  g  g  g  �  �  �  �                                                                      �  �  �  �      �  �  �  �      �  �                                      j  j                                                                          �  �                              �  �  �  �  �  �  �  �@       @      �`bM���        @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @      @"      @"      @      @      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @"      @      @      @"      @"      @      @      @      @      @      @      @"      @"      ?ə�����?�333333@�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j     @�j             @���   @���   @���   @z�@   @z�@   @���   @���   @���   @���   @���   @���   @`   @      ?��    @(��   @(��   ?���    ?���    @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   @(��   ?���    ?���    @(��   @(��   ?���    ?���    ?���    ?���    ?���    ?���    @(��   @(��                                  	   
                                                                     =   >         =   >   =   >   )   *   )   *               =   >   K   L   =   >                     =   >   K   L         C   D         G   H   I   J   K   L   M   N                                                                      �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                                  �  �                                                                           e   e                   e   e          �  �  �  �  @  @  �  �                                                                      �  �  �  �  -  -  M  M  �  �  -  -  �  �  -  -                                  �  �                                                                          �  �                  !  !          �  �  �  �  �  �  �  �@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @qrfffff@qrfffff@qfffff@qfffff@q�fffff@q�fffff@qrfffff@qrfffff@qfffff@qfffff@qbfffff@qbfffff@qfffff@qfffff@qbfffff@qbfffff@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @q�fffff@q�fffff@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @q�fffff@q�fffff@�@     @�@     @�@     @�@     @q�fffff@q�fffff@�@     @�@     @qrfffff@qrfffff@qrfffff@qrfffff@q�fffff@q�fffff@q�fffff@q�fffff@Y      ?ə������       ?�      ?��%���                                                                       �   �   �   �  J  J   �   �   �   �  	  	   �   �  	  	                                   �   �                                                                           �   �                  ,  ,           �   �   �   �   �   �   �   �                                                                                                                                        @>      @>      @:      @:      @:      @:      @>      @>      @:      @:      @:      @:      @:      @:      @:      @:                                                                      @>      @>                                                                                                                                                      @>      @>                                      @>      @>                      @>      @>      @>      @>      @>      @>      @>      @>      ?�      @i      @.      ?��Q�        ?�z�G�{?�z�G�{?�z�G�{?��Q��?���Q�?��Q��?���Q�?�z�G�{?�      ?�      ?�      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      @Y      ?�      @`@     @y      @"      @������?ٙ�����?�      ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?陙����?陙����?陙����?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @�     >�����h�?�      ?�      ?�      ?�                              ?�      ?�      ?�      ?�      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      not_vegetated                           needleleaf_evergreen_temperate_tree     needleleaf_evergreen_boreal_tree        needleleaf_deciduous_boreal_tree        broadleaf_evergreen_tropical_tree       broadleaf_evergreen_temperate_tree      broadleaf_deciduous_tropical_tree       broadleaf_deciduous_temperate_tree      broadleaf_deciduous_boreal_tree         broadleaf_evergreen_shrub               broadleaf_deciduous_temperate_shrub     broadleaf_deciduous_boreal_shrub        c3_arctic_grass                         c3_non-arctic_grass                     c4_grass                                c3_crop                                 c3_irrigated                            temperate_corn                          irrigated_temperate_corn                spring_wheat                            irrigated_spring_wheat                  winter_wheat                            irrigated_winter_wheat                  temperate_soybean                       irrigated_temperate_soybean             barley                                  irrigated_barley                        winter_barley                           irrigated_winter_barley                 rye                                     irrigated_rye                           winter_rye                              irrigated_winter_rye                    cassava                                 irrigated_cassava                       citrus                                  irrigated_citrus                        cocoa                                   irrigated_cocoa                         coffee                                  irrigated_coffee                        cotton                                  irrigated_cotton                        datepalm                                irrigated_datepalm                      foddergrass                             irrigated_foddergrass                   grapes                                  irrigated_grapes                        groundnuts                              irrigated_groundnuts                    millet                                  irrigated_millet                        oilpalm                                 irrigated_oilpalm                       potatoes                                irrigated_potatoes                      pulses                                  irrigated_pulses                        rapeseed                                irrigated_rapeseed                      rice                                    irrigated_rice                          sorghum                                 irrigated_sorghum                       sugarbeet                               irrigated_sugarbeet                     sugarcane                               irrigated_sugarcane                     sunflower                               irrigated_sunflower                     miscanthus                              irrigated_miscanthus                    switchgrass                             irrigated_switchgrass                   tropical_corn                           irrigated_tropical_corn                 tropical_soybean                        irrigated_tropical_soybean                         	 
                        ! " # $ % & ' ( ) * + , - . / 0 1 2 3 4 5 6 7 8 9 : ; < = > ? @ A B C D E F G H I J K L M N�@Ç�3333@.      @.      @.      @.      @.      @.      @.      @.      @      @      @                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              @Ç�3333�       �@@     @Ç�3333@/      @      @/      �1      ��@     @Ç�3333�1      ��@     ��@     �1      @/      @Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@Ç�3333@�@     @6      �       �       @�@     @2������@�@     @/      �       @�@     @�@     �       �1      @/      @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@             @�      @��     @u�             @��             @��     @u�             @��     @u�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             @�@     @�@     @7      @7      @�@     @�@     @�@     @�@     @7      @�@     @�@     @7      @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     ?�z�G�{@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @q�fffff@q�fffff@q�fffff@q�fffff@�@     @�@     @q�fffff@q�fffff@q�fffff@q�fffff@�@     @�@     @q�fffff@q�fffff@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @rbfffff@rbfffff@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @rbfffff@rbfffff@�@     @�@     @�@     @�@     @rbfffff@rbfffff@�@     @�@     @q�fffff@q�fffff@q�fffff@q�fffff@rbfffff@rbfffff@rbfffff@rbfffff?�������        ?�333333?�333333?�333333?ٙ�����?�333333?ٙ�����?�333333?�333333?ə�����?ə�����?ə�����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ?�������?�������?�������        ?�������        ?�������?�������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ?�ffffff�O�    � ,�    �j     �1�    ���    �z�    ���    �z�    �j     �j     ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    �O�    � ,�    �j     �1�    ���    �z�    ���    �z�    �j     �j     ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    �j     � ,�    �j     �1�    ���    �z�    ���    �z�    �j     �j     ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    �j     � ,�    �j     �1�    ���    �z�    ���    �z�    �j     �j     ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ?�ffffff?�      ?�      ?�G�z�H@rp     @r�     @>      ?�z�G�{@$      @>              @fL/�{J                ?��\(�?ᙙ����?�      ?ᙙ����?�      ?ҏ\(�?���Q�?ᙙ����?�p��
=q?ᙙ����?ᙙ����?ᙙ����@u�             ?�=p��
=?�=p��
=?��\(�?�p��
=q?�p��
=q?�=p��
=?�=p��
=?�=p��
=?�p��
=q?�=p��
=?�=p��
=?���Q�?���Q�?���Q�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�        ?�
=p��
?�
=p��
?�z�G�{?�(�\)?�(�\)?�z�G�{?�z�G�{?�z�G�{?�(�\)?�z�G�{?�z�G�{?�������?�������?�������?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{        ?�
=p��
?�
=p��
?�
=p��
?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�?��\(�        ?��Q��?��Q��?��Q��?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��G�z�?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��?��
=p��=䝧�a�L?�(�\)?�333333?�333333?�333333@      @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     @�8     ?�33@  ?�33@  ?��̿���?��̿���?��̿���?��̿���?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?����  	?�33@  ?�33@  ?�33@  ?�33@  ?����  	?����  	?����  	?����  	@      @      @      @      @      @      @      @      @      @      @      @      @&      @&      @&      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @       @       @       @       ?�      ?�      @       @       @       ?�      ?�      ?�      @       @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      @      ?�      ?�;dZ�?�;dZ�?�-V�?�-V�?�Ƨ-?��x���?�Ƨ-?��x���?�-V�?���+?���+?�?|�hs?�?|�hs?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�;dZ�?�;dZ�?�-V�?�-V�?�ȴ9Xb?��x���?���n��?��x���?�-V�?���+?���+?�?|�hs?�?|�hs?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�?�-V�        @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     ?�������?�������?�������?�������?�333333?�333333?�333333?�333333?�333333?�������?�������?�������?�������?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�      ?�      ?�      ?�      ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�      ?�      ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333�      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �      �              ��(�\)��(�\)��(�\)��Q��R��(�\)��Q��R��(�\)��(�\)��z�G�{��z�G�{��z�G�{���Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q�����Q��                                                                                                                                                                                                                                                                                                                                                                                ���Q�����Q�����Q�����Q��                                        @2&fffff@2&fffff@2&fffff@      @=�\(�@:0��
=q@=�\(�@=�\(�@7&fffff@7&fffff@7&fffff@Dz�G�{@Dz�G�{@4z�G�{@M�p��
=@M�p��
=@4z�G�{@4z�G�{@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@M�p��
=@4z�G�{@4z�G�{@M�p��
=@M�p��
=@M�p��
=@M�p��
=@Dz�G�{@Dz�G�{@4z�G�{@4z�G�{@M�p��
=@M�p��
=        @       ?�      ?�      ?�      ?�                              ?�                              ?�      ?�                      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              sunlit                                  shaded                                  xylem                                   root                                    ?�������?�      B�_            ?�z�G�{?�z�G�{?���"'?�t�j~��?�t�j~��?��	� �?��	� �?��	� �?�iY_��a?�uMUh?��1&�y?��$�/?��VW�i�?��th��?��VW�i�?��VW�i�?�������?�������?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?�������?�������?���Q�?���Q�?���Q�?���Q�?���Q�?���Q�?�������?�������?���Q�?���Q��      ?ٙ������L             � �    � �    � �    � �    � �    �X     �X     �X     ��    ��    ��    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���    ���            ��     ��     ��     ��     ��     ��     ��     ��     ��C�    ��C�    ��C�    ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     ��     @      A��    ?�      @�@     �陙������333333=��i�Q�?��`A�7L        @ffffff@ffffff?�      @ffffff?�      ?�      @ffffff@ffffff?�ffffff?θQ��?θQ��                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ?�                              ?�                      ?�      ?�      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ?�      ?�      ?�� ě��@i      @i      @i      @i      @i      @i      @i      @i      @i      @$      @$      @$      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @i      @
���   ?���    ?�X�   A     ?���`   @      @k��           ?�z�G�{?�z�G�{?��G�z�?��Q�?��Q�?ۅ�Q�?ۅ�Q�?ۅ�Q�?��Q�?ۅ�Q�?ۅ�Q�?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����?ٙ�����        ?�z�G�{?�z�G�{?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������?�������        ?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�              ?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?PbM���?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��        ?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?陙����?�\(�\?�\(�\?陙����?陙����?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?�\(�\?陙����?陙����?�\(�\?�\(�\?陙����?陙����?陙����?陙����?陙����?陙����?�\(�\?�\(�\?�ffffff?�ffffff@\(�\?�������@!������?�      ?�`A�7K�@�     Aj     ?�      ?�UUUUUVwater                                   carbon                                  @�     Aj     ?�      ?�333333>�6��C.>�����h�?�      ?�      ?���8�YK?ٙ�����?�������?�      @              @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@     @@             ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ?�              ?�z�G�{?�z�G�{?�z�G�{?�z�G�{?�z�G�{?ə�����?��G�z�?��G�z�?�z�G�{?��G�z�?��G�z��p��
=q��p��
=q��p��
=q?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333                                                                ?�333333?�333333                                                                                                                                                ?�333333?�333333                                ?�333333?�333333                ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333        ?�(�\)?�(�\)?�(�\)?�333333?�333333?�(�\)?�(�\)?�(�\)?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?��Q��?���������      ?�      ?�z�G�{?c�*0U2a                                                                                                                                        @      @      ?�333333?�333333?�333333?�333333?�      ?�      ?�333333?�333333?�333333?�333333?�333333?�333333?�333333?�333333                                                                ?�      ?�                                                                                                                                                      ?�������?�������                                @      @                      @      @      @      @      @      @      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      @>      