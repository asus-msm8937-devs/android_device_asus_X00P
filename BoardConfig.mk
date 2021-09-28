#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# inherit from common msm8937-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/asus/X00P

# Assert
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/board-info.txt
TARGET_OTA_ASSERT_DEVICE := X00P,X00PD

# Build
BUILD_BROKEN_DUP_RULES := true

# Kernel
TARGET_KERNEL_CONFIG := X00P_defconfig

# Display
TARGET_SCREEN_DENSITY := 380

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):libinit_X00P
TARGET_RECOVERY_DEVICE_MODULES := libinit_X00P

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# SEPolicy
BOARD_VENDOR_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/vendor

# Inherit the proprietary files
-include vendor/asus/X00P/BoardConfigVendor.mk
