#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00P

# Kernel
TARGET_KERNEL_CONFIG := X00P_defconfig

# Inherit the proprietary files
-include vendor/asus/X00P/BoardConfigVendor.mk
