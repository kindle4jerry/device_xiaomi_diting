/*
 * Copyright (C) 2021-2022 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>
#include <libinit_utils.h>

#include "vendor_init.h"

#define FINGERPRINT_GL "Xiaomi/diting/diting:13/SKQ1.220303.001/V14.0.2.0.TLFMIXM:user/release-keys"
#define FINGERPRINT_CN "Xiaomi/diting/diting:13/SKQ1.220303.001/V14.0.10.0.TLFCNXM:user/release-keys"

static const variant_info_t diting_global_info = {
    .hwc_value = "GL",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "diting",
    .marketname = "Xiaomi 12T Pro",
    .model = "22081212G",
    .mod_device = "diting_global",
    .build_fingerprint = FINGERPRINT_GL,
};

static const variant_info_t diting_info = {
    .hwc_value = "CN",
    .sku_value = "",

    .brand = "Xiaomi",
    .device = "diting",
    .marketname = "Redmi K50 Ultra",
    .model = "22081212C",
    .mod_device = "diting",
    .build_fingerprint = FINGERPRINT_CN,
};

static const std::vector<variant_info_t> variants = {
    diting_global_info,
    diting_info,
};

void vendor_load_properties() {
    set_dalvik_heap();
    search_variant(variants);

    // SafetyNet workaround
    property_override("ro.boot.verifiedbootstate", "green");
}
