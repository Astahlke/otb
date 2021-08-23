#!/bin/bash

echo ""
echo "ENV Variables"
echo "Singularity local cache directory: $SINGULARITY_LOCALCADHEDIR"
echo "Singularity cache directory: $SINGULARITY_CACHEDIR"
echo "Singularity temporary directory: $SINGULARITY_TMPDIR"
echo "Nextflow's Singularity cache directory: $NXF_SINGULARITY_CACHEDIR"
echo ""
echo "Singularity Things"
echo "Which Singularity? $( which singularity )"
echo "Singularity versioning: $( singularity version )" 
echo ""
echo "Nextflow Things"
echo "Which Nextflow? $( which nextflow )"
echo "Nextflow versioning:"
echo "$( nextflow info )"
