#!/bin/bash


location=$( pwd )
echo "fetch location is:"
if [ -n "$NXF_SINGULARITY_CACHEDIR" ]; then
 echo $NXF_SINGULARITY_CACHEDIR
 cd $NXF_SINGULARITY_CACHEDIR
elif [ -n $1 ]; then
 echo $1
 cd $1
else
 echo "..not set, please set NXF_SINGULARITY_CACHEDIR or give me a location"
fi


singularity pull bryce911-bbtools.img docker://bryce911/bbtools
singularity pull dmolik-genomescope2.img docker://dmolik/genomescope2
singularity pull dmolik-hifiasm.img docker://dmolik/hifiasm
singularity pull dmolik-jellyfish.img docker://dmolik/jellyfish
singularity pull dmolik-pbadapterfilt.img docker://dmolik/pbadapterfilt
singularity pull dmolik-ragtag.img docker://dmolik/ragtag
singularity pull mgibio-samtools:1.9.img docker://mgibio/samtools:1.9
singularity pull dmolik-shhquis.img docker://dmolik/shhquis
singularity pull ezlabgva-busco:v5.2.2_cv1.img docker://ezlabgva/busco:v5.2.2_cv1
singularity pull koszullab-hicstuff.img docker://koszullab/hicstuff
singularity pull pvstodghill-any2fasta.img docker://pvstodghill/any2fasta
singularity pull dmolik-blobtools.img docker://dmolik/blobtools

cd $location
