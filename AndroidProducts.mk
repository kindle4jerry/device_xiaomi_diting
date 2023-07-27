#
# Copyright (C) 2023 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/derp_diting.mk \
    $(LOCAL_DIR)/derp_ditingp.mk

COMMON_LUNCH_CHOICES := \
    derp_diting-eng \
    derp_diting-userdebug \
    derp_diting-user \
    derp_ditingp-eng \
    derp_ditingp-userdebug \
    derp_ditingp-user
