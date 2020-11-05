#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00P

# Kernel
TARGET_KERNEL_CONFIG := X00P_defconfig

# Partitions
BOARD_VENDORIMAGE_PARTITION_SIZE   := 681574400
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/fstab.qcom

# Inherit the proprietary files
-include vendor/asus/X00P/BoardConfigVendor.mk
