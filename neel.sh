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
echo "                                                     "
echo "   Credits to @Astrako for all 7870 Device trees     "
echo "                                                     "
echo "                                                     "
echo ""
echo "Select which recovery you want to build for ALl 7870"
echo ""
echo "1 = TWRP"
echo "2 = Exit"
read n
if [ $n -eq 1 ]; then
echo ""
echo "Selected TWRP for 7870"
mkdir recoveries ; cd recoveries ; mkdir TWRP ; cd TWRP
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0
repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j64
echo ""
rm -rf device
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+      J6     +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_j6lte.git -b twrp device/samsung/j6lte
echo ""
echo "Building"
. build/envsetup.sh ; lunch omni_j6lte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+   J7Prime   +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_on7xelte.git -b twrp device/samsung/on7xelte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_on7xelte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+     J5      +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_j5y17lte.git -b twrp device/samsung/j5y17lte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_j5y17lte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+   J7Pro     +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_j7y17lte.git -b twrp device/samsung/j7y17lte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_j7y17lte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+    J7NXT    +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_j7velte.git -b twrp device/samsung/j7velte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_j7velte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+   J7 16     +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_j7xelte.git device/samsung/j6lte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_j7xelte-eng ; mka recoveryimage
make clean
make clobber
echo ""
echo "+++++++++++++++"
echo "+      A3     +"
echo "+++++++++++++++"
echo ""
git clone https://github.com/samsungexynos7870/android_device_samsung_a3y17lte.git -b twrp device/samsung/a3y17lte
echo ""
echo "Building"
source build/envsetup.sh ; lunch omni_a3y17lte-eng ; mka recoveryimage
elif [ $n -eq 2 ]; then
exit
fi













