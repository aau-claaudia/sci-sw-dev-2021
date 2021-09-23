#! /bin/bash

## BASH SCRIPT FOR COUPLING PYTHON AND R SCRIPT ##

for j in data/*
do
    j2=${j::${#j}-5}
    j2=${j2:5}
    j3=$(python print_kpthesaurus.py ./$j)
    totline="${j2};${j3}"
    echo $totline >> plotinput.dat
done 

Rscript analyse_and_visualize.r plotinput.dat
