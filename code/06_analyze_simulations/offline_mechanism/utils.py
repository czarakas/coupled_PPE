####################################################################################

import xarray as xr
import numpy as np
import glob

####################################################################################

def get_dataset(domain='lnd', ensemble_dir='coupled_simulations', var='TSKIN', key='OFFL0001',
                h='h0',
                printon=False):
    if domain=='atm':
        fpath=('/glade/campaign/cgd/tss/czarakas/CoupledPPE/'+ensemble_dir+'/'+
                               key+'/atm/proc/tseries/'+
                               key+'.cam.'+h+'.timeseries.'+var+'.nc')
    elif domain=='lnd':
        fpath=('/glade/campaign/cgd/tss/czarakas/CoupledPPE/'+ensemble_dir+'/'+
                               key+'/lnd/proc/tseries/'+
                               key+'.clm2.'+h+'.timeseries.'+var+'.nc')
    if np.size(glob.glob(fpath))>0:
        ds = xr.open_mfdataset(fpath)
        if printon: print(ds.time.values[0])
    else:
        print("no "+fpath)
        ds = None
    
    return ds

class met_driver_data:

             # class variable shared by all instances
    def __init__(self, SWin, LWin, Ta, qa, P, rho=None):
        self.SWin = SWin    # instance variable unique to each instance
        self.LWin = LWin
        self.Ta = Ta
        self.qa = qa
        self.P = P
        self.rho = rho
        
    def load_subdaily(self, desc='desc'):
        self.desc=desc
        
    def add_noise(self):
        self.SWin_noisy = self.SWin+np.random.normal(0,0.2,np.size(Ta))
        self.LWin_noisy = self.LWin+np.random.normal(0,0.2,np.size(Ta))
        self.Ta_noisy = self.Ta+np.random.normal(0,0.2,np.size(Ta))
        self.qa_noisy = self.qa
        self.P_noisy = self.P+np.random.normal(0,100,np.size(Ta))
        
    def add_rho(self, rho):
        self.rho=rho
        
    def calculate_other_params(self):
        self.lambda0 = calculate_lambda0(self.Ta)
        if self.rho is None:
            self.rho = calculate_rho(self.P, self.Ta, self.qa)
        self.qsat_Ta = calculate_qsat(self.Ta, self.P)
        self.delta=calculate_delta(self.Ta)
        self.gamma=calculate_gamma(self.P)
        self.ro = calculate_ro(self.rho, self.lambda0)

########################################### CONSTANTS###########################
################################################################################

CONSTANT_Cp=1005 #J/kg-K #specific heat of air at constant pressure
CONSTANT_sigma=5.670374419e-8 #Stefan-Boltzmann constant W / (m2 x K4)
CONSTANT_Lv = 2.501e6 #J/kg #Note this actually depends on temperature

SHR_CONST_TKFRZ   = 273.15# K
    
#For water vapor (temperature range 0C-100C)
a0 =  6.11213476
a1 =  0.444007856
a2 =  0.143064234e-01
a3 =  0.264461437e-03
a4 =  0.305903558e-05
a5 =  0.196237241e-07
a6 =  0.892344772e-10
a7 = -0.373208410e-12
a8 =  0.209339997e-15
    
c0 =  6.11123516
c1 =  0.503109514
c2 =  0.188369801e-01
c3 =  0.420547422e-03
c4 =  0.614396778e-05
c5 =  0.602780717e-07
c6 =  0.387940929e-09
c7 =  0.149436277e-11
c8 =  0.262655803e-14

CONSTANT_Avogad = 6.02214e26       #Avogadro's number ~ molecules/kmole
CONSTANT_Boltz  = 1.38065e-23      # Boltzmann's constant ~ J/K/molecule
CONSTANT_R_gas = CONSTANT_Avogad*CONSTANT_Boltz      #Universal gas constant   ~ J/K/mole
CONSTANT_Mwdair = 28.966           # molecular weight dry air ~ g/mole
CONSTANT_Mw_wv   = 18.016          # molecular weight water vapor #g/mol
CONSTANT_Rd_air = CONSTANT_R_gas/CONSTANT_Mwdair     # Dry air gas constan(J/K/kg)
CONSTANT_R_wv = CONSTANT_R_gas/CONSTANT_Mw_wv #(J/K/kg)
CONSTANT_epsilon = CONSTANT_Rd_air/CONSTANT_R_wv

################################################################################

def calculate_q(e, Pa, epsilon=CONSTANT_epsilon):
    return (e*epsilon/Pa)

def calc_sat_vapor_pressure(T_K):
    """Calculate saturation vapor pressure at temperature using Buck equation
    Inputs: Temperature (K)
    Outputs: Saturation vapor pressure (Pa)"""

    #td = np.min([100.0, np.max([-75.0, T_K - SHR_CONST_TKFRZ])])
    td=T_K - SHR_CONST_TKFRZ

    #if (td >= 0.0):
    es_local = a0 + td*(a1 + td*(a2 + td*(a3 + td*(a4 + td*(a5 + td*(a6 + td*(a7 + td*a8)))))))
    #else:
    #    es_local = c0 + td*(c1 + td*(c2 + td*(c3 + td*(c4 + td*(c5 + td*(c6 + td*(c7 + td*c8)))))))


    es = es_local * 100            # pa
    return es

def calculate_qsat(T, Pa):
    esat=calc_sat_vapor_pressure(T)
    qsat = calculate_q(esat, Pa)
    return qsat

def calculate_q_from_VPD(VPD, Ta, P):
    esat=calc_sat_vapor_pressure(Ta)
    e=esat-VPD
    q=calculate_q(e, P, epsilon=CONSTANT_epsilon)
    return q

def calc_vapor_e(q, P, epsilon=CONSTANT_epsilon):
    """"Calculate actual vapor pressure
    Inputs: specific humidity of air (unitless), 
    pressure (Pa)
    Outputs: vapor pressure (Pa)"""
    return P*q/epsilon

def calculate_Rnet(FSA, FIRA):
    # Net radiation Rnet
    #albedo=1-FSA/FSDS
    return (FSA - FIRA)

def calculate_albedo(FSDS, FSA):
    # Albedo
    return (1-(FSA/FSDS))

def calculate_G(Rnet, SH, LH):
    # Heat storage G
    return Rnet - SH - LH

################################################################################

def calculate_lambda0(Ta,sigma=CONSTANT_sigma):
    """
    input: Ta(K)
    sigma=Stefan-Boltzmann constant W / (m2 x K4)
    
    output: (m^2 K)/(W)
    """
    #temperature sensitivity
    return 1/(4*sigma*(Ta**3))

def calculate_ra(Ts, Ta, SH, P, qa, Cp=CONSTANT_Cp):
    """
        #ra #aerodynamic resistance
        
        Cp= specific heat of air at constant pressure (J/kg-K)
        rho= air density (kg/(m^3)
        Tdiff=K
        SH = W/m2
        
        Output=resistance (s/m)
    """
    rho = calculate_rho(P, Ta, qa)
    SH_filtered=SH.where(np.abs(SH)>5)
    Tdiff=Ts-Ta
    Tdiff_filtered=Tdiff.where(np.abs(Tdiff)>0.1)
    return Cp*rho*(Tdiff_filtered/SH_filtered)

def calculate_rs(Ts, Ta, qa, LH, ra, P, Lv=CONSTANT_Lv):
    """
    rho= air density (kg/(m^3)
    Lv = latent heat of vaporization (J/kg)
    qdiff = kg/kg - kg/kg
    LH = W/m2
    ra=s/m
    
    output: s/m
    """
    rho = calculate_rho(P, Ta, qa)
    qsat_Ts = calculate_qsat(Ts, P)
    LH_filtered=LH.where(np.abs(LH)>5)
    qdiff=(qsat_Ts-qa)
    qdiff_filtered=qdiff.where(qdiff>0.001)
    return ((rho*Lv*qdiff_filtered)/LH_filtered)-ra

def calculate_ro(rho, lambda0, Cp=CONSTANT_Cp):
    """
    Cp= specific heat of air at constant pressure (J/kg-K)
     rho= air density (kg/(m^3)
     lambda0 (m^2 K)/(W)
     
     output: s/m
    """
    return rho*Cp*lambda0

def calculate_gamma(P, Lv=CONSTANT_Lv, Cp=CONSTANT_Cp, epsilon=CONSTANT_epsilon):
    """
    Cp= specific heat of air at constant pressure (J/kg-K)
    P = pressure (Pa)
    Lv = latent heat of vaporizationJ/kg
    
    gamma = Pa/K
    """
    return Cp*P/(epsilon*Lv)

def calculate_delta(T, Rv=CONSTANT_R_wv, Lv=CONSTANT_Lv):
    """
    esat = saturation vapor pressure (Pa)
    Lv = latent heat of vaporization (J/kg)
    Rv = (J/K/kg)
    T (K)
    
    delta=Pa/K
    """
    #delta=#destar/dT at Ta
    esat = calc_sat_vapor_pressure(T)
    return (Lv*esat/(Rv*T*T))

def calculate_f(ro, ra, rs, delta, gamma):
    """
    ro (s/m)
    ra (s/m)
    delta (Pa/K)
    gamma (Pa/K)
    """
    #f #energy redistribution factor
    #return (ro/ra)*(1+(delta/gamma)*(ro/(ra+rs)))
    return (ro/ra)*(1+(delta/gamma)*(ra/(ra+rs)))

def calculate_rho(P, T, q, Rd=CONSTANT_Rd_air, Rv=CONSTANT_R_wv):
    """
    P (Pa)
    T (K)
    q (unitless)
    R (J/K/kg)
    
    output Pa*kg/J = (kg/(m^3))
    """
    Pv=calc_vapor_e(q, P)
    Pd=P-Pv
    
    rho = (Pd/(Rd*T))+(Pv/(Rv*T))
    return rho

def calculate_Rn_star(SWin, albedo, LWin, emissivity, Ta, sigma=CONSTANT_sigma):
    SWnet=SWin*(1-albedo)
    LWnet=(emissivity*LWin)-(emissivity*sigma*(Ta**4))
    return SWnet+LWnet

####################################################################################
def solve_surf_energy_budget(met_obs, ra, rs, albedo, 
                            emissivity=1,G=0):
    
    met_obs.calculate_other_params()
    lambda0 = met_obs.lambda0
    rho = met_obs.rho
    qsat_Ta = met_obs.qsat_Ta
    delta=met_obs.delta
    gamma=met_obs.gamma
    ro = met_obs.ro
    
    f=calculate_f(ro, ra, rs, delta, gamma)
    Rn_star=calculate_Rn_star(met_obs.SWin, albedo, 
                              met_obs.LWin, emissivity, met_obs.Ta)
    
    Tdiff=lambda0*(Rn_star-G-((rho*CONSTANT_Lv)*(qsat_Ta-met_obs.qa)/(ra+rs)))/(1+f)
    Ts=Tdiff+met_obs.Ta
    
    SH=(rho*CONSTANT_Cp/ra)*(Ts-met_obs.Ta)

    qsat_Ts=calculate_qsat(Ts, met_obs.P)
    LH=rho*CONSTANT_Lv/(ra+rs)*(qsat_Ts-met_obs.qa)
    
    return [Ts, SH, LH]

####################################################################################

def calculate_dTs_dRn(lambda0, f):
    return lambda0/(1+f)

def calculate_df_dra(ro, ra, rs, delta, gamma):
    term1 = (ra/(ra+rs))
    df_dra= ((-ro/(ra*ra))*
            (1+ ((delta/gamma)*term1*term1)))

    return df_dra

def calculate_df_drs(ro, ra, rs, delta, gamma):
    df_drs= (-delta/gamma) * (ro/((ra+rs)*(ra+rs)) )
    return df_drs

def calculate_dTs_dr(Rnet, qa, qsat_Ta, lambda0, f, ra, rs, rho, df_dr,
                     G=0,
                     Lv=CONSTANT_Lv):
    # df_dra if dTs/dra, df_drs if dTs/drs
    qdiff=qsat_Ta-qa
    term1=(lambda0*Lv*rho*qdiff)/((1+f)*(ra+rs)*(ra+rs))
    term2=lambda0*df_dr*(Rnet-G-((Lv*rho*qdiff)/(ra+rs)))/((f+1)*(f+1))
    dTs_dr=term1-term2

    return dTs_dr

####################################################################################
def calculate_partial_derivs(met_obs, ra, rs, albedo, emissivity=1, G=0):
    met_obs.calculate_other_params()
    lambda0 = met_obs.lambda0
    rho = met_obs.rho
    delta=met_obs.delta
    gamma=met_obs.gamma
    qsat_Ta = met_obs.qsat_Ta
    ro = met_obs.ro
    
    
    Rnet=calculate_Rn_star(met_obs.SWin, albedo, 
                              met_obs.LWin, emissivity, met_obs.Ta)

    
    f = calculate_f(ro, ra, rs, delta, gamma)
    
    dTs_dRn=calculate_dTs_dRn(lambda0, f)
    
    df_dra=calculate_df_dra(ro, ra, rs, delta, gamma)
    df_drs=calculate_df_drs(ro, ra, rs, delta, gamma)
    
    dTs_dra=calculate_dTs_dr(Rnet, met_obs.qa, qsat_Ta, lambda0, f, ra, 
                             rs, rho, df_dra, G)
    
    dTs_drs=calculate_dTs_dr(Rnet, met_obs.qa, qsat_Ta, lambda0, f, ra, 
                             rs, rho, df_drs, G)
    
    return [dTs_dRn, dTs_dra, dTs_drs]