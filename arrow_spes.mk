#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

PRODUCT_NAME := arrow_spes
PRODUCT_DEVICE := spes
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="spes-user 12 SKQ1.211103.001 V13.0.4.0.SGCMIXM release-keys"

BUILD_FINGERPRINT := Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys
