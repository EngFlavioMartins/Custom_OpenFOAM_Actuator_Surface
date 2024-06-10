#!/bin/sh

cd ${0%/*} || exit 1    # Run from this directory

# Source tutorial run functions
. $WM_PROJECT_DIR/bin/tools/RunFunctions

./Solver/Allclean.sh

# ======================================== #
# Case 0B
# ======================================== #
echo ">> Running Case 0B:"

cp  ./Resources/Setup-no-blades 	./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-OneBlade 	./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case0B"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 1B
# ======================================== #
echo ">> Running Case 1B:"

cp  ./Resources/Setup-with-blades      ./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-OneBlade 	./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case1B"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 2B
# ======================================== #
echo ">> Running Case 2B:"

cp  ./Resources/Setup-with-blades      ./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-TwoBlades 	./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case2B"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 4B
# ======================================== #
echo ">> Running Case 4B:"

cp  ./Resources/Setup-with-blades            ./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-FourBlades       ./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case4B"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 1Bnd
# ======================================== #
echo ">> Running Case 1Bnd:"

cp  ./Resources/Setup-with-blades-no-drag	./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-OneBlade		./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case1Bnd"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 2Bnd
# ======================================== #
echo ">> Running Case 2Bnd:"

cp  ./Resources/Setup-with-blades-no-drag	./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-TwoBlades		./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case2Bnd"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh

# ======================================== #
# Case 4Bnd
# ======================================== #
echo ">> Running Case 4Bnd:"

cp  ./Resources/Setup-with-blades-no-drag	./Solver/ActuatorsSetup
cp  ./Resources/topoSetDict-FourBlades       	./Solver/system/topoSetDict

./Solver/Allclean.sh
./Solver/Allprepare.sh
./Solver/Allrun.sh

source_dir="./Solver"
destination_dir="./Results/Case4Bnd"
destination_dir="${destination_dir}" source_dir="${source_dir}" ./Solver/Allbackup.sh



