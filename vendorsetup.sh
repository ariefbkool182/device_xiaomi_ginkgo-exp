echo 'Cloning dolby atmos'
git clone --depth=1 https://github.com/Astridxx/vendor_dolby -b lineage-21.0 vendor/dolby

echo 'Adding patch to Frameworks av'
cd frameworks/av
wget https://raw.githubusercontent.com/Astridxx/Patch-Kuntao/lineage-21/frameworks_av/0001-Restore-clearkey-hidl-code.patch
wget https://raw.githubusercontent.com/Astridxx/Patch-Kuntao/lineage-21/frameworks_av/0002-OMXStore-Import-loading-libstagefrightdolby.patch
wget https://raw.githubusercontent.com/Astridxx/Patch-Kuntao/lineage-21/frameworks_av/0003-Import-Dolby-Effects-initialization.patch
wget https://raw.githubusercontent.com/Astridxx/Patch-Kuntao/lineage-21/frameworks_av/0004-Add-support-for-loading-prebuilt-ddp-decoder-lib.patch
wget https://raw.githubusercontent.com/Astridxx/Patch-Kuntao/lineage-21/frameworks_av/0005-Do-not-allow-DAP-effect-to-be-suspended.patch
patch -p1 <0001-Restore-clearkey-hidl-code.patch
patch -p1 <0002-OMXStore-Import-loading-libstagefrightdolby.patch
patch -p1 <0003-Import-Dolby-Effects-initialization.patch
patch -p1 <0004-Add-support-for-loading-prebuilt-ddp-decoder-lib.patch
patch -p1 <0005-Do-not-allow-DAP-effect-to-be-suspended.patch
cd ../..
