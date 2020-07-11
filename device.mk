#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/asus/X00P

# Inherit proprietary files
$(call inherit-product, vendor/asus/X00P/X00P-vendor.mk)

# Inherit from msm8937-common
$(call inherit-product, device/asus/msm8937-common/msm8937.mk)
