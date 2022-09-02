/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t spes_global_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Redmi",
    .device = "spes",
    .marketname = "Redmi Note 11",
    .model = "2201117TG",
    .build_fingerprint = "Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t spes_in_info = {
    .hwc_value = "",
    .sku_value = "",

    .brand = "Redmi",
    .device = "spes",
    .marketname = "Redmi Note 11",
    .model = "2201117TI",
    .build_fingerprint = "Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys",

    .nfc = false,
};

static const variant_info_t spesn_global_info = {
    .hwc_value = "",
    .sku_value = "k7tn",

    .brand = "Redmi",
    .device = "spesn",
    .marketname = "Redmi Note 11 NFC",
    .model = "2201117TY",
    .build_fingerprint = "Redmi/spesn_global/spesn:12/SKQ1.211103.001/V13.0.2.0.SGKMIXM:user/release-keys",

    .nfc = true,
};

static const std::vector<variant_info_t> variants = {
    spes_global_info,
    spes_in_info,
    spesn_global_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
