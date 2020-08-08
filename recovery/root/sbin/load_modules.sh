#!/sbin/sh

# Load Device-Specific Modules (Based on Device Variant)
load()
{
    insmod /sbin/modules/aw8695.ko
    insmod /sbin/modules/goodix_fod_mmi.ko
}

load
wait 1

setprop modules.loaded 1

exit 0