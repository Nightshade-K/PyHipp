#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Time"
head -n 1 rplpl-slurm*.out rplspl-slurm*.out

echo "End Time"
tail -n 5 rplpl-slurm*.out rplspl-slurm*.out 
