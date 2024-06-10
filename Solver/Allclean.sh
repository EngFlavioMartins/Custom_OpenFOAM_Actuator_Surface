#!/bin/sh
cd ${0%/*} || exit 1    # Run from this directory

# Source tutorial clean functions
. $WM_PROJECT_DIR/bin/tools/CleanFunctions

cleanCase

rm log.*    # Remove old log files if they exist
rm -r 0     # Remove the O folder

#------------------------------------------------------------------------------
