LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    android/sensor.cpp \
    gui/SensorManager.cpp

LOCAL_C_INCLUDES := gui
LOCAL_SHARED_LIBRARIES := libgui libutils liblog libsensor libbinder libandroid
LOCAL_MODULE := libshim_camera
LOCAL_MODULE_CLASS := SHARED_LIBRARIES

include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)

LOCAL_SRC_FILES := get_process_name.c

LOCAL_MODULE := libshims_get_process_name
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
