#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
        vendor/lib/libarcsoft_nighthawk.so \
        |vendor/lib/libarcsoft_piczoom.so \
        |vendor/lib/libarcsoft_videostab.so \
        |vendor/lib/libarcsoft_night_shot.so)
            "${PATCHELF}" --remove-needed "libandroid.so" "${2}"
            ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=X00P
export DEVICE_COMMON=msm8937-common
export VENDOR=asus

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
