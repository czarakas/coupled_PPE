# Description of Parameter Selection Goals

We had two main criteria for selecting CLM parameters to include in the Coupled CLM PPE: 
(1) that the CLM parameters were likely to generate a large atmospheric response, based on the results of the Offline CLM PPE
(2) that CLM parameters would alter surface fluxes by altering different components of the land surface (e.g. soil hydrology, leaf area, plant water use efficiency)

In CESM, land surface parameters biophysically influence the atmosphere surface by changing surface fluxes of shortwave and longwave radiation; latent and sensible heat; and momentum (see Table 2.2.5 in CLM5 Technical Note for the specific CLM output variables that are inputs to CAM). We therefore selected the CLM parameters that had the biggest impact on the monthly average of these variables in the offline CLM PPE. While there are many other variables of interest (e.g. GPP, fire frequency, etc.), and these variables will likely generate feedbacks in the atmosphere, they affect the atmosphere by affecting surface heat fluxes, etc., so we focus on the variables directly affecting the atmosphere in the screening criteria.

# Parameter Selection Procedure
1. Start with the 193 parameters used in the offline PPE
2. Exclude any variables that were not ranked in the top (5?) parameters influencing the following measures of the following variables in the 2010 control run of the land-only PPE:
    * MEASURES
        - Global mean
        - Global interannual variability
        - Mean of any of 10 Whittaker biomes (Ice sheet, Tropical rain forest, tropical seasonal forest, subtropical desert, temperate rain forest, temperate seasonal forest, woodland/shrubland, temperate grassland, boreal forest, tundra)
        - Interannual variability of any of 10 Whittaker biomes (Ice sheet, Tropical rain forest, tropical seasonal forest, subtropical desert, temperate rain forest, temperate seasonal forest, woodland/shrubland, temperate grassland, boreal forest, tundra)
    
    * VARIABLES
        - Variables sent to CAM:
            - Latent heat flux
            - Sensible heat flux
            - Water vapor flux
            - Zonal momentum flux
            - Meridional momentum flux
            - Emitted longwave radiation
            - Direct beam visible albedo
            - Direct beam near-infrared albedo
            - Diffuse visible albedo
            - Diffuse near-infrared albedo
            - Absorbed solar radiation
            - Radiative temperature
            - Temperature at 2 meter height
            - Specific humidity at 2 meter height
            - Wind speed at 10 meter height
        - Terrestrial coupling hotspot area
3. Then filter based on functional area??