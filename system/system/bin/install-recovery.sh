#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/bootdevice/by-name/recovery:35119952:e0b378f3a627a10065579df972016dc549a6d198; then
  applypatch  EMMC:/dev/block/platform/bootdevice/by-name/boot:9935696:086075c50407b8fcbeb7eb46fc4d5c811d5249fd EMMC:/dev/block/platform/bootdevice/by-name/recovery e0b378f3a627a10065579df972016dc549a6d198 35119952 086075c50407b8fcbeb7eb46fc4d5c811d5249fd:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
