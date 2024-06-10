#!/bin/sh
cd ${0%/*} || exit 1    # Run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

rm log.*    # Remove old log files if they exist
runParallel $(getApplication)
runApplication reconstructPar -latestTime
runApplication foamToVTK -latestTime

#------------------------------------------------------------------------------
