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

$(call inherit-product, vendor/huawei/hi6250/hi6250-vendor.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# APN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/apns-conf.xml:system/etc/apns-conf.xml \

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.r_submix.default \
    libaudioroute \
    libtinyalsa \

# Camera
PRODUCT_PACKAGES += \
    libcopybit_wrapper \
    Snap \

# Display
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# File System
PRODUCT_PACKAGES += \
    mkuserimg.sh \
    mkyaffs2image \

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/bin/busybox:system/bin/busybox \
    $(LOCAL_PATH)/configs/bin/data_enc_resize:system/bin/data_enc_resize \

# Graphics
PRODUCT_PACKAGES += \
    hwcomposer.hi6250 \

# Lights
PRODUCT_PACKAGES += \
    lights.hi6250 \

# Live Wallpapers
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/etc/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/etc/media_profiles_was.xml:system/etc/media_profiles_was.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    com.nxp.nfc.nq.xml \
    libp61-jcop-kit \
    libnqnfc-nci \
    nfc_nci.nqx.default \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    Tag \

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \

# Overlays
DEVICE_PACKAGE_OVERLAYS := \
    $(LOCAL_PATH)/overlay

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/etc/permissions/android.hardware.huawei.xml:system/etc/permissions/android.hardware.huawei.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version-1_0_3.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level-0.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

# Properties
ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.adb.secure=0 \
    ro.secure=0 \
    ro.zygote=zygote64_32 \
    sys.usb.configfs=1 \
    sys.usb.controller=hisi-usb-otg

# Power
PRODUCT_PACKAGES += \
    power.hi6250 \

# Ramdisk
PRODUCT_PACKAGES += \
    27c11b57-14ff-48bf-abbe-92e345092278.sec \
    cota \
    cust_init \
    hdbd \
    hw_ueventd \
    ntfs-3gd \
    oeminfo_nvm_server \
    secure_storage_s \
    teecd \
    volisnotd

PRODUCT_PACKAGES += \
    bfgx_and_wifi_cfg \
    bfgx_cfg \
    CPU_RAM_SCHED.bin \
    CPU_RAM_WBS.bin \
    cr4_asic.bin \
    cr4_regmem.bin \
    cr4_regmem_u1.bin \
    fstab.hi6250 \
    fstab.zram512m \
    fstab.zram1024m \
    fstab.zram1280m \
    fstab.zram1536m \
    init.3584.rc \
    init.4541.rc \
    init.4753.rc \
    init.4873.rc \
    init.6198.rc \
    init.51316.rc \
    init.61202.rc \
    init.61285.rc \
    init.61457.rc \
    init.audio.rc \
    init.balong_modem.rc \
    init.charger.rc \
    init.chip.charger.rc \
    init.chip.usb.rc \
    init.connectivity.bcm43xx.rc \
    init.connectivity.bcm43455.rc \
    init.connectivity.gps.rc \
    init.connectivity.hisi.rc \
    init.connectivity.rc \
    init.device.rc \
    init.extmodem.rc \
    init.hi6250.rc \
    init.hi6250.usb.rc \
    init.hisi.rc \
    init.hisi.usb.rc \
    init.manufacture.rc \
    init.meticulus.rc \
    init.performance.rc \
    init.platform.rc \
    init.post-fs-data.rc \
    init.protocol.rc \
    init.recovery.balong_modem.rc \
    init.recovery.hisi.rc \
    init.recovery.huawei.rc \
    init.tee.rc \
    ueventd.3584.rc \
    ueventd.4541.rc \
    ueventd.4873.rc \
    ueventd.6198.rc \
    ueventd.51316.rc \
    ueventd.61202.rc \
    ueventd.61285.rc \
    ueventd.61457.rc \
    ueventd.hi6250.rc \
    wifi_cfg \

# RIL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.ril_class=HuaweiRIL

# Sensors
PRODUCT_PACKAGES += \
    sensors.hi6250 \

# Shim
PRODUCT_PACKAGES += \
    libshim

# Symlink
PRODUCT_PACKAGES += \
    emui5_vendor_symlinks \
    metiotgd \

# Wifi
PRODUCT_PACKAGES += \
    hostapd_cli

# Wizard
PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.config.sync=yes \
    ro.setupwizard.enable_bypass=1 \
    ro.setupwizard.mode=OPTIONAL \
