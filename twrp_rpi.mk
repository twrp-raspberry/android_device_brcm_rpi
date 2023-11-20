#
# Copyright (C) 2021-2023 KonstaKANG
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/brcm/rpi/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rpi
PRODUCT_NAME := twrp_rpi
PRODUCT_BRAND := Raspberry
PRODUCT_MODEL := Raspberry Pi
PRODUCT_MANUFACTURER := Raspberry
PRODUCT_RELEASE_NAME := Raspberry Pi
