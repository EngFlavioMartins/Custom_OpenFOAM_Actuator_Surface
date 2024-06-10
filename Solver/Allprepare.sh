#!/bin/bash
cd ${0%/*} || exit 1    # Run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions


cp -r ./0.backup ./0
cp -r ./constant/polyMesh.backup ./constant/polyMesh
topoSet
foamDictionary -entry "method" -set "hierarchical" system/decomposeParDict
runApplication decomposePar -copyZero


#------------------------------------------------------------------------------

