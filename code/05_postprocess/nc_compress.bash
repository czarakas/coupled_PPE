#!/bin/bash

for var in "$@"
do
    filetype=`ncdump -k $var`
    netcdf3string="64-bit offset" 
    netcdf4string="netCDF-4"
    if [[ "$filetype" =~ "$netcdf3string" ]]; then
	echo "converting $var"
	ncks -O -4 -L 1 $var $var
    elif [[ "$filetype" =~ "$netcdf4string" ]]; then
	echo "netcdf4 conversion has already been done for $var"
    else
	echo "neither netcdf3 nor netcdf4 string encountered for $var"
	echo $filetype
    fi
done
