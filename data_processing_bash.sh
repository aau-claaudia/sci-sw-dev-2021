#!/bin/bash
echo "Please, enter filename where ID data will be extracted"
                read IDfilename

IDfilename=$IDfilename.dat
echo "The data will be extracted to $IDfilename and ploted in ${IDfilename%%.*}.pdf"

if [ -f "$IDfilename" ]; then
	while true; do
		read -p "The files $IDfilename and ${IDfilename%%.*}.pdf already exist in the current folder, Do you wish to overwrite them (y/n)?" yn
	    		case $yn in
			       	[Yy]* ) echo -n "" > "$IDfilename"; break;;
       				[Nn]* ) echo "Please, enter another filename where ID data will be extracted"; \
					read IDfilename; IDfilename=$IDfilename.dat; \
					echo "The data will be extracted to $IDfilename and ploted in ${IDfilename%%.*}.pdf" ; break;;
				* ) echo "Please answer yes or no.";
			esac
	done
fi

echo "Processing..."

for JSONfilename in data/*.json; do
( echo $(basename --  ${JSONfilename%%.*}) | tr -d '\n' ; echo ";" | tr -d '\n' ; python print_kpthesaurus.py $JSONfilename ) >> "$IDfilename"
done

Rscript analyse_and_visualize.r "$IDfilename"
