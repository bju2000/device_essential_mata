
# config.mk
#
# Product-specific compile-time definitions.
#

TARGET_BOARD_PLATFORM := msm8998

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a73

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a73

TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true
TARGET_NO_KERNEL := false

-include $(QCPATH)/common/msm8998/BoardConfigVendor.mk

TARGET_ENABLE_PROPRIETARY_SMARTCARD_SERVICE := false

CONFIG_EAP_PROXY_DUAL_SIM := false
BOARD_HAVE_QCOM_FM := false
BOARD_ANT_WIRELESS_DEVICE :=

# Some framework code requires this to enable BT
BOARD_HAVE_BLUETOOTH := true

USE_OPENGL_RENDERER := true
BOARD_USE_LEGACY_UI := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000

#A/B related defines
AB_OTA_UPDATER := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 4294967296
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 5120
BOARD_USERDATAIMAGE_PARTITION_SIZE := 10737418240
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

BOARD_VENDORIMAGE_PARTITION_SIZE := 1073741824
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_USES_HWC2 := true
TARGET_USES_GRALLOC1 := true
TARGET_USES_QCOM_DISPLAY_BSP := true
TARGET_USES_COLOR_METADATA := true
CAMERA_DAEMON_NOT_PRESENT := true

BOARD_KERNEL_CMDLINE += quiet
BOARD_KERNEL_CMDLINE += androidboot.hardware=mata user_debug=31 msm_rtb.filter=0x37 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 sched_enable_hmp=1 sched_enable_power_aware=1 service_locator.enable=1 swiotlb=2048 androidboot.configfs=true androidboot.usbcontroller=a800000.dwc3
BOARD_KERNEL_CMDLINE += loop.max_part=7
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware_mnt/image

BOARD_SECCOMP_POLICY := device/essential/mata/seccomp


BOARD_EGL_CFG := device/essential/mata/egl.cfg

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_OFFSET      := 0x80000
BOARD_KERNEL_TAGS_OFFSET := 0x02500000
BOARD_RAMDISK_OFFSET     := 0x02700000
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_USES_UNCOMPRESSED_KERNEL := false

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 4096

BOARD_USES_GENERIC_AUDIO := true
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_NO_RPC := true

TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/
TARGET_INIT_VENDOR_LIB := libinit_msm

TARGET_INIT_COLDBOOT_TIMEOUT := 8

NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_KERNEL_APPEND_DTB := true
TARGET_COMPILE_WITH_MSM_KERNEL := false
BOARD_USES_EASEL := true
#Enable PD locater/notifier
TARGET_PD_SERVICE_ENABLED := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

#Enable SSC Feature
TARGET_USES_SSC := true

# Disable DLKM
TARGET_KERNEL_DLKM_DISABLE := true

#Add NON-HLOS files for ota upgrade
ADD_RADIO_FILES := true

#Enable CPUSets
ENABLE_CPUSETS := true

# We are not using WiPower
BOARD_USES_WIPOWER := false

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/essential/mata

TARGET_RECOVERY_FSTAB := device/essential/mata/fstab.mata

BOARD_SEPOLICY_DIRS := device/essential/mata/sepolicy

# Override
TARGET_BOOTLOADER_BOARD_NAME := Mata

# List of partitions to be updated during A/B
AB_OTA_PARTITIONS := boot system vendor

# Install odex files into the other system image
BOARD_USES_SYSTEM_OTHER_ODEX := true

BOARD_ROOT_EXTRA_SYMLINKS := /vendor/lib/dsp:/dsp
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/firmware_mnt:/firmware
BOARD_ROOT_EXTRA_SYMLINKS += /mnt/vendor/persist:/persist
BOARD_SEPOLICY_DIRS += device/essential/mata/sepolicy/vendor
BOARD_PLAT_PUBLIC_SEPOLICY_DIR := device/essential/mata/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR := device/essential/mata/sepolicy/private

INTERNAL_LOCAL_CLANG_EXCEPTION_PROJECTS := vendor/qcom/proprietary/

BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := default
BOARD_VENDOR_QCOM_LOC_PDK_FEATURE_SET := true

# RenderScript
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so

# Use MKE2FS
TARGET_USES_MKE2FS := true

# Audio
BOARD_USES_ALSA_AUDIO := true
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_SND_MONITOR := true
AUDIO_FEATURE_ENABLED_USB_TUNNEL := true

BOARD_VNDK_VERSION := current

# Recovery margin
TARGET_RECOVERY_UI_MARGIN_HEIGHT := 120
TARGET_RECOVERY_UI_MARGIN_WIDTH := 64
# Charger marging
TARGET_HEALTHD_DRAW_SPLIT_OFFSET := 80

# Add dual interface support
WIFI_HIDL_FEATURE_DUAL_INTERFACE := true

# Use 64 bits version for DRM service
TARGET_ENABLE_MEDIADRM_64 := true

BOARD_PREBUILT_VENDORIMAGE := device/essential/mata/vendor-QQ1A.200105.088.img

BUILD_BROKEN_USES_BUILD_COPY_HEADERS := true
