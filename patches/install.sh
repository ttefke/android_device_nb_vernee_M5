echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="frameworks/base"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/cyanogen/mt6755-common/patches/$dir/*.patch
	echo " "
done

dirs="system/core"

for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/cyanogen/mt6755-common/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
