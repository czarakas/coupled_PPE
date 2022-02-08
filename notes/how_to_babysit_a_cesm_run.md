
1. Run a test case for just a couple of days
      - Check that it finishes running without throwing an error
      - Check that the variables we want are saved in the history files
2. Run a real case, with resubmits
      - Check that the model output is different from other simulations with different settings (e.g. if we change a parameter, the model output should not be EXACTLY the same as a simulation with a different parameterization -- if it is, we probably didn't actually change the parameter)
      - Check that things that we want to be constant over time are actually constant over time (e.g. CO2 concentration, CH4 concentration, land use)
      - Check that the model is stabilizing over time (it will take a little while to spin up, but shouldn't be drifting to a different state over a long period of time), e.g. check global mean temperature, global mean LAI, temperature and LAI trends over different latitudes/biomes
      - Check that nothing **crazy** is happening (e.g. is global mean temperature about what we'd expect, are there plants where we think there should be plants)
3. Check that the simulation is still going every day when it should be running (using qstat)
4. Back up the history files in campaign storage because they will be deleted!!
