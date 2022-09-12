#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Nusantara stuff.
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Nad Stuff
NAD_BUILD_TYPE := OFFICIAL
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_USES_BLUR := true
USE_PIXEL_CHARGING := true

PRODUCT_NAME := nad_spes
PRODUCT_DEVICE := spes
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys

# GMS
TARGET_GAPPS_ARCH := arm64
USE_GAPPS := true
