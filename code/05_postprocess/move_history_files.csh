#! /bin/tcsh

# ------------ DESTINATION
#set dir_campaign = /glade/campaign/univ/uwas0044/czarakas/coupled_PPE/PI_SOM
set dir_campaign = /glade/campaign/cgd/tss/czarakas

# ------------ ORIGIN
#set dir_scratch = /glade/campaign/univ/uwas0044/czarakas/coupled_PPE/PI_SOM
set dir_scratch = /glade/scratch/czarakas/archive


set caselist = (COUP0000_PI_SOM COUP0001_PI_SOM_v02 COUP0002_PI_SOM_v02 COUP0003_PI_SOM_v02 COUP0004_PI_SOM_v02 COUP0005_PI_SOM_v02 COUP0006_PI_SOM_v02 COUP0007_PI_SOM_v02 COUP0008_PI_SOM_v02 COUP0009_PI_SOM_v02 COUP0010_PI_SOM_v02 COUP0011_PI_SOM_v02 COUP0012_PI_SOM_v02 COUP0013_PI_SOM_v02 COUP0014_PI_SOM_v02 COUP0015_PI_SOM_v02 COUP0016_PI_SOM_v02 COUP0017_PI_SOM_v02 COUP0018_PI_SOM_v02 COUP0019_PI_SOM_v02 COUP0020_PI_SOM_v02 COUP0021_PI_SOM_v02 COUP0022_PI_SOM_v02 COUP0023_PI_SOM_v02 COUP0024_PI_SOM_v02 COUP0025_PI_SOM_v02 COUP0026_PI_SOM_v02 COUP0027_PI_SOM_v02 COUP0028_PI_SOM_v02 COUP0029_PI_SOM_v02 COUP0030_PI_SOM_v02 COUP0031_PI_SOM_v02 COUP0032_PI_SOM_v02 COUP0033_PI_SOM_v02 COUP0034_PI_SOM_v02 COUP0035_PI_SOM_v02 COUP0036_PI_SOM_v02)

# Loop over each case:
foreach casename ($caselist)
    echo $casename
    #echo ">> Moving atm"
    #cd $dir_campaign/$casename/atm/hist/
    #mv $dir_scratch/$casename/atm/hist/* .

    #echo ">> Moving ice"
    #cd $dir_campaign/$casename/ice/hist/
    #mv $dir_scratch/$casename/ice/hist/* .

    #echo ">> Moving lnd"
    #cd $dir_campaign/$casename/lnd/hist/
    #mv $dir_scratch/$casename/lnd/hist/*.nc .

    #echo ">> Moving glc"
    #cd $dir_campaign/$casename/glc/hist/
    #mv $dir_scratch/$casename/glc/hist/*.nc .

    echo ">> Moving rest"
    cd $dir_campaign/$casename/rest/
    mv $dir_scratch/$casename/rest/* .

    #echo ">> Moving cpl"
    #cd $dir_campaign/$casename/cpl/hist
    #mv $dir_scratch/$casename/cpl/hist/*.nc .
end #foreach
