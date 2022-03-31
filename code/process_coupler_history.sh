#!/bin/sh
#############################################################################################################################

module load nco

declare -a cpl_prefixes=( "ha2x1hi" "ha2x3h" "ha2x1h" "ha2x1d" )
declare -a months=( "01" "02" "03" "04" "05" "06" "07" "08" "09" "10" "11" "12" )
declare -a years=( "0049" "0050" "0051" "0052" "0053" "0054" "0055" "0056" "0057" "0058" "0059" "0060" "0061" "0062" "0063" "0064" "0065" "0066" "0067" "0068" "0069" "0070" "0071" "0072" "0073" "0074" "0075" "0076" "0077" "0078" "0079" "0080" "0081" "0082" "0083" "0084" "0085" "0086" "0087" "0088" "0089" "0090" "0091" "0092" "0093" "0094" "0095" "0096" "0097" "0098" "0099" "0100" "0101" "0102" "0103" "0104" "0105" "0106" "0107" "0108" "0109" "0110" "0111" "0112" "0113" "0114" "0115" "0116" "0117" "0118" "0119" "0120" "0121" "0122" "0123" "0124" "0125" "0126" "0127" "0128" "0129" "0130" "0131" "0132" "0133" "0134" "0135" "0136" "0137" "0138" "0139" "0140" "0141" "0142" "0143" "0144" "0145" "0146" "0147" "0148" "0149" "0150" "0151" "0152" "0153" "0154" "0155" "0156" "0157" "0158" "0159" "0160" "0161" "0162" "0163" "0164" "0165" "0166" "0167" "0168" "0169" "0170" "0171" "0172" "0173" "0174" "0175" "0176" "0177" "0178" "0179" "0180" "0181" "0182" "0183" "0184" "0185" "0186" "0187" "0188" "0189" )
declare CASENAME=COUP0000_PI_SOM
#("0041" "0042" "0043" "0044" "0045" "0046" "0047" "0048" "0049" "0050" "0051" "0052" "0053" "0054" "0055" "0056" "0057" "0058" "0059" "0060" "0061" "0062" "0063" "0064")
declare FILEPATTERN=../hist/$CASENAME.cpl
declare FILEPATTERN_PROC=$CASENAME.cpl

echo $FILEPATTERN

for val in ${cpl_prefixes[@]}; do
   for year in ${years[@]}; do
      echo $year
      for month in ${months[@]}; do
         echo $FILEPATTERN.$val.$year-$month.nc
         ncrcat $FILEPATTERN.$val.$year-$month-* $FILEPATTERN_PROC.$val.$year-$month.nc
      done
   done
done

#ncrcat ../hist/coupled_DEFmedslope_1xCO2_03.cpl.ha2x1d.0041-12-* coupled_DEFmedslope_1xCO2_03.cpl.ha2x1d.0041-12.nc
