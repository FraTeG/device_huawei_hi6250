#
# Copyright 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This contains the module build definitions for the hardware-specific
# components for this device.
#
# As much as possible, those components should be built unconditionally,
# with device-specific names to avoid collisions, to avoid device-specific
# bitrot and build breakages. Building a component unconditionally does
# *not* include it on all devices, so it is safe even with hardware-specific
# components.

# Audio HALs
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio@4.0 \
    android.hardware.audio@4.0-impl \
    android.hardware.audio.common@4.0 \
    android.hardware.audio.common@4.0-util \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio.effect@4.0 \
    android.hardware.audio.effect@4.0-impl \
    android.hardware.soundtrigger@2.0-impl \

# Bluetooth HALs
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \

# Camera HALs
PRODUCT_PACKAGES += \
    android.hardware.camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \

# ConfigStore HALs
PRODUCT_PACKAGES += \
    android.hardware.configstore@1.1-service \

# Gatekeeper HALs
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \

# GNNS HALs
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service \

# Graphics HALs
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.graphics.mapper@2.0-impl \

# HIDL HALs
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.base@1.0_system \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0_system

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_VENDOR)/etc/vintf/manifest.xml

# Keymaster HALs
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \

# Lights HALs
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \

# Memtrack HALs
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \

# NFC HALs
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0 \

# Power HALs
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \

# RenderScript HALs
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl \

# RIL HALs
PRODUCT_PACKAGES += \
    android.hardware.radio@1.0 \

# Sensors HALs
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \

# Tether HALs
PRODUCT_PACKAGES += \
    android.hardware.tetheroffload.config@1.0 \

# USB HALsn
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service \

# Vibrator HALs
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \

# Wifi HALs
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    android.hardware.wifi.supplicant@1.0 \
    wificond \
