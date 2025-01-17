#
# Copyright 2020 The LineageOS Project.
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

COMMON_PATH := device/sony/mt6757-common

# Platform
TARGET_BOARD_PLATFORM := mt6757
TARGET_BOARD_PLATFORM_GPU := mali-t880mp2

# Bootloader
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := mt6757

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true

# Boot animation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true

# Charger
BOARD_CHARGER_SHOW_PERCENTAGE := true
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness

# Dexpreopt
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# Display
USE_OPENGL_RENDERER:=true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
OVERRIDE_RS_DRIVER := libRSDriver_mtk.so
TARGET_USES_HWC2 := true

# Disable memcpy opt (for audio libraries)
TARGET_CPU_MEMCPY_OPT_DISABLE := true

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# FIX Freezing
TARGET_REQUIRES_SYNCHRONOUS_SETSURFACE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# GPS
BOARD_GPS_LIBRARIES := true
BOARD_CONNECTIVITY_MODULE := conn_soc

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(COMMON_PATH)/include

# HIDL Manifest
DEVICE_MANIFEST_FILE := $(COMMON_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(COMMON_PATH)/compatibility_matrix.xml

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/sony/mt6757
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_RAMDISK_OFFSET := 0x04f88000
BOARD_TAGS_OFFSET := 0x03f88000
BOARD_SECOND_OFFSET := 0x00e88000
BOARD_KERNEL_OFFSET = 0x00008000
TARGET_KERNEL_ARCH := arm64
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --second_offset $(BOARD_SECOND_OFFSET) --tags_offset $(BOARD_TAGS_OFFSET)
TARGET_USES_64_BIT_BINDER := true

# Kernel Modules
TARGET_KMODULES := true

# NFC
NXP_CHIP_TYPE := PN553

# Partitions
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 41943040
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 5788139520
BOARD_INCLUDE_TREBLE_APP := true
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 24536678400
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/recovery.fstab

# RIL
BOARD_PROVIDES_LIBRIL := true

# Sensors
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Seccomp filters
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp

# System Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
TARGET_SYSTEM_PROP := $(COMMON_PATH)/system.prop

# SELinux
BOARD_SEPOLICY_DIRS += $(COMMON_PATH)/sepolicy/vendor

# Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Shim Libraries
TARGET_LD_SHIM_LIBS := \
	/system/lib/libprogrambinary.so|libshim_program_binary.so \
	/system/lib64/libprogrambinary.so|libshim_program_binary.so \
	/system/lib/libaalservice.so|libshim_fake_log_print.so \
	/system/lib64/libaalservice.so|libshim_fake_log_print.so \
	/system/lib/libaal.so|libshim_fake_log_print.so \
	/system/lib64/libaal.so|libshim_fake_log_print.so

# FS Gen
TARGET_FS_CONFIG_GEN := \
	$(COMMON_PATH)/fs/config.aid

# Wifi
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_AP := AP
WIFI_DRIVER_FW_PATH_STA := STA
WIFI_DRIVER_FW_PATH_P2P := P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0
