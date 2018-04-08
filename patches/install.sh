echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="frameworks/av"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="frameworks/base"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="frameworks/native"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="hardware/libhardware"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="system/netd"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="system/sepolicy"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

dirs="system/vold"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git am $rootdirectory/device/nb/vernee_M5/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
