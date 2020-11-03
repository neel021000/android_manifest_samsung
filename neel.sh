#!/bin/bash
echo "                                                     "
echo "             _     _                     _       _   "
echo "  _ __  _ __(_)___| |__    ___  ___ _ __(_)_ __ | |_ "                                              
echo " | '_ \| '__| / __| '_ \  / __|/ __| '__| | '_ \| __|"                                              
echo " | |_) | |  | \__ \ | | | \__ \ (__| |  | | |_) | |_ "                                              
echo " | .__/|_|  |_|___/_| |_| |___/\___|_|  |_| .__/ \__|"
echo " |_|                                      |_|        "
echo "                                                     "
echo "              coded by Neel0210                      "
echo "                                                     "
echo "     INSPIRED FROM ASTRAKO's WORK IN 7870            "
echo "     Huge thnx to @Astrako and @davinash97           "
echo "                                                     "
echo ""
echo "Select which recovery you want to build for M30s"
echo ""
echo "1 = TWRP"
echo "2 = OFOX"
echo "3 = SHRP"
echo "4 = PBRP"
echo "5 = Exit"
read n
if [ $n -eq 1 ]; then
echo ""
echo "Selected TWRP for M30s"
echo ""
echo "Cloning"
mkdir recoveries ; cd recoveries ; mkdir TWRP ; cd TWRP
echo ""
echo "Syncing"
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
echo ""
echo "shallow sync"
repo init --depth=1 -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
echo ""
echo "Cloning device tree"
git clone https://github.com/neel021000/android_device_samsung_m30sdd.git -b main device/samsung/m30sdd
echo ""
echo "repo sync"
repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j64
echo ""
echo "Building"
. build/envsetup.sh ; lunch omni_m30sdd-eng ; make recoveryimage
elif [ $n -eq 2 ]; then
echo ""
echo "Selected OFOX for M30s"
echo ""
echo "Cloning"
mkdir recoveries ; cd recoveries ; mkdir OFOX ; cd OFOX
echo ""
echo "Syncing"
repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0
echo ""
echo "Cloning device tree"
git clone https://github.com/neel021000/android_device_samsung_m30sdd.git -b ofox device/samsung/m30sdd
echo ""
echo "repo sync"
repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j64
echo ""
echo "Building"
mv device/samsung/m30sdd/build_ofox.sh .
. build_ofox.sh m30sdd
elif [ $n -eq 3 ]; then
echo ""
echo "Selected SHRP for M30s"
echo ""
echo "Cloning"
mkdir recoveries ; cd recoveries ; mkdir SHRP ; cd SHRP
echo ""
echo "Syncing"
repo init -u git://github.com/SKYHAWK-Recovery-Project/platform_manifest_twrp_omni.git -b android-9.0
echo ""
echo "Cloning device tree"
git clone https://github.com/neel021000/android_device_samsung_m30sdd.git -b shrp device/samsung/m30sdd
echo ""
echo "repo sync"
repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j64
echo ""
echo "making"
. build/envsetup.sh ; lunch omni_m30sdd-eng ; make recoveryimage
elif [ $n -eq 4 ]; then
echo ""
echo "Selected PBRP for M30s"
echo ""
echo "Cloning"
mkdir recoveries ; cd recoveries ; mkdir PBRP ; cd PBRP
echo ""
echo "Syncing"
repo init -u git://github.com/PitchBlackRecoveryProject/manifest_pb.git -b android-10.0
echo ""
echo "Cloning device tree"
git clone https://github.com/neel021000/android_device_samsung_m30sdd.git -b PBRP device/samsung/m30sdd
echo ""
echo "repo sync"
repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j64
echo ""
echo "making"
. build/envsetup.sh ; lunch omni_m30sdd-eng ; make recoveryimage
elif [ $n -eq 5 ]; then
exit
fi













