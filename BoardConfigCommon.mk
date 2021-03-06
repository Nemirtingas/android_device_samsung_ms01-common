# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from msm8226-common
-include device/samsung/msm8226-common/BoardConfigCommon.mk

COMMON_PATH := device/samsung/ms01-common

# FM
BOARD_HAVE_QCOM_FM := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_msm8226
TARGET_LIBINIT_MSM8226_DEFINES_FILE := $(COMMON_PATH)/init/init_ms01xxx.cpp
TARGET_UNIFIED_DEVICE := true

# Kernel
BOARD_CUSTOM_BOOTIMG      := true
BOARD_CUSTOM_BOOTIMG_MK   := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_BASE         := 0x00000000
BOARD_KERNEL_CMDLINE      := console=null androidboot.console=null androidboot.hardware=qcom msm_rtb.filter=0x37 androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE     := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_KERNEL_IMAGE_NAME   := zImage
BOARD_MKBOOTIMG_ARGS      := --ramdisk_offset 0x02000000 --tags_offset 0x1e00000
TARGET_KERNEL_SOURCE      := kernel/samsung/msm8226
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androideabi-

#TARGET_KERNEL_CONFIG  := msm8226-sec_defconfig
#TARGET_KERNEL_VARIANT_CONFIG := msm8926-sec_ms01lte_eur_defconfig
#TARGET_KERNEL_SELINUX_CONFIG := selinux_defconfig
 
# Partitions
BOARD_FLASH_BLOCK_SIZE             := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE     := 104857600
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 104857600
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1835008000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 55801768968
BOARD_CACHEIMAGE_PARTITION_SIZE    := 209715200
TARGET_USERIMAGES_USE_F2FS         := true
TARGET_USERIMAGES_USE_EXT4         := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE  := f2fs

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab.qcom
TARGET_RECOVERY_DENSITY := xhdpi
TARGET_NOT_USE_GZIP_RECOVERY_RAMDISK := true

# TWRP Recovery
#RECOVERY_VARIANT := twrp
#TW_THEME := portrait_hdpi
#PRODUCT_COPY_FILES += device/samsung/ms01lte/twrp.fstab:recovery/root/etc/twrp.fstab

# Avoid CMSDK issues for now
I_WANT_A_QUAIL_STAR := true

# Wifi
BOARD_HAS_QCOM_WLAN              := true
BOARD_HAS_QCOM_WLAN_SDK          := true
BOARD_WLAN_DEVICE                := qcwcn
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_PROVIDES_WCNSS_QMI        := true
TARGET_USES_QCOM_WCNSS_QMI       := true
TARGET_USES_WCNSS_CTRL           := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
WIFI_DRIVER_FW_PATH_STA          := "sta"
WIFI_DRIVER_FW_PATH_AP           := "ap"
