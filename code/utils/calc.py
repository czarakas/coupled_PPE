import numpy as np

Avogad = 6.02214e26       #Avogadro's number ~ molecules/kmole
Boltz  = 1.38065e-23      # Boltzmann's constant ~ J/K/molecule
R_gas = Avogad*Boltz      #Universal gas constant   ~ J/K/mole
Mwdair = 28.966           # molecular weight dry air ~ kg/kmole
Mw_wv   = 18.016          # molecular weight water vapor
Rd_air = R_gas/Mwdair     # Dry air gas constan(J/K/kg)
R_wv = R_gas/Mw_wv
epsilon = Rd_air/R_wv

SHR_CONST_TKFRZ   = 273.15

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

def calc_sat_vapor_pressure_old(T_K):
    """Calculate saturation vapor pressure at temperature using Buck equation
    Inputs: Temperature (K)
    Outputs: Saturation vapor pressure (Pa)"""
    T_C = T_K - 273.15
    e_kpa = (0.61121*np.exp((18.678-(T_C/234.5))*(T_C/(257.14+T_C)))) #Buck equation
    return e_kpa*1000
    #return (np.exp(34.494-(4924.99/(T+237.1)))) / ((T+105)**1.57)

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


def calc_vapor_pressure(qa, pa):
    """"Calculate actual vapor pressure
    Inputs: specific humidity of air (unitless), pressure (Pa)
    Outputs: vapor pressure (Pa)"""
    return pa*qa/epsilon

# def calc_VPD(VP, VP_sat):
#    return VP_sat - VP

def calc_VPD(qa, pa, T_K):
    VP = calc_vapor_pressure(qa, pa)
    VP_sat = calc_sat_vapor_pressure(T_K)
    return VP_sat - VP

# def calc_RH(VP, VP_sat):
#    return VP/VP_sat

def calc_RH(qa, pa, T_K):
    VP = calc_vapor_pressure(qa, pa)
    VP_sat = calc_sat_vapor_pressure(T_K)
    return VP*100/VP_sat

def calc_RH_from_VPD(VPD_Pa, T_K):
    VP_sat = calc_sat_vapor_pressure(T_K)
    VP = VP_sat-VPD_Pa
    return VP*100/VP_sat

def calc_VPD_from_RH(RH, T_K):
    """
    Inputs: 
        RH (%; i.e. 70% RH would be 70)
        T_K (K)
    Outputs:
        VPD (Pa)
    """
    VP_sat = calc_sat_vapor_pressure(T_K)
    VP = RH*VP_sat/100
    return VP_sat - VP
