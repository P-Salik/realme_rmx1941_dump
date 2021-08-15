#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:33554432:b290cb32ab38ca9e1b564520a91355236b7a275e; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:33554432:79d6c2ea11ebb791176a7f7c54ea8ae28bd3b3cf EMMC:/dev/block/platform/bootdevice/by-name/recovery b290cb32ab38ca9e1b564520a91355236b7a275e 33554432 79d6c2ea11ebb791176a7f7c54ea8ae28bd3b3cf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
