LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

# We only want this apk build for tests.
LOCAL_MODULE_TAGS := tests

LOCAL_STATIC_JAVA_LIBRARIES := mockito-target

LOCAL_JAVA_LIBRARIES := android.test.runner

LOCAL_CERTIFICATE := platform

# Include all test java files.
LOCAL_SRC_FILES := \
        $(call all-java-files-under, ../../tests/src/com/google/android/apps/pixelperfect/api) \
        $(call all-java-files-under, ../../tests/src/com/google/android/apps/pixelperfect/platform)

LOCAL_PACKAGE_NAME := PixelPerfectPlatformTests

LOCAL_INSTRUMENTATION_FOR := PixelPerfectPlatform

LOCAL_SDK_VERSION := current

include $(BUILD_PACKAGE)
