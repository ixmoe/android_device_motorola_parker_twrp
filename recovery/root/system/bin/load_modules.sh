#!/system/bin/sh

# Load Device-Specific Modules (Based on Device Variant)
load()
{
    is_fastboot_twrp=$(getprop ro.boot.fastboot)
    if [ ! -z "$is_fastboot_twrp" ]; then
        insmod /system/lib/modules/aw8695.ko
        insmod /system/lib/modules/goodix_fod_mmi.ko
    else
        mkdir /v
        suffix=$(getprop ro.boot.slot_suffix)
        if [ -z "$suffix" ]; then
            suf=$(getprop ro.boot.slot)
            suffix="_$suf"
        fi
        venpath="/dev/block/bootdevice/by-name/vendor$suffix"
        mount -t ext4 -o ro "$venpath" /v
        mkdir -p /vendor/lib/modules
        cp /v/lib/modules/aw8695.ko /vendor/lib/modules/aw8695.ko
        cp /v/lib/modules/goodix_fod_mmi.ko /vendor/lib/modules/goodix_fod_mmi.ko
        insmod /vendor/lib/modules/aw8695.ko
        insmod /vendor/lib/modules/goodix_fod_mmi.ko
        umount /v
        rmdir /v
    fi
}

load
wait 1

setprop modules.loaded 1

exit 0
