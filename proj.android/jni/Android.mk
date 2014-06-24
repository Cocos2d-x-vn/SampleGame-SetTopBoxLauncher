LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dcpp_shared

LOCAL_MODULE_FILENAME := libcocos2dcpp

LOCAL_SRC_FILES := hellocpp/main.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/HelloWorldScene.cpp \
                   ../../Classes/MaskLayer.cpp \
                   ../../Classes/MoreDetailLayer.cpp \
                   ../../Classes/AdLayer.cpp \
                   ../../Classes/RotateLayer.cpp \
                   ../../Classes/SetTopBoxMainScene.cpp \
                   ../../Classes/OpeningAnimation.cpp \
                   ../../Classes/TextEffector.cpp \
                   ../../Classes/RectangleInterface.cpp \
                   ../../Classes/cellTv.cpp \
                   ../../Classes/EffectManager.cpp \
                   ../../Classes/ExplosionEffect.cpp \
                   ../../Classes/PlayVideoLayer.cpp  \
                   ../../Classes/SelectedEffect.cpp  \
                   ../../Classes/SpriteBlur.cpp
                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocosdenshion_static
#LOCAL_WHOLE_STATIC_LIBRARIES += box2d_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocostudio_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_extension_static
LOCAL_WHOLE_STATIC_LIBRARIES += cocos_ui_static

# LOCAL_WHOLE_STATIC_LIBRARIES += cocosbuilder_static
# LOCAL_WHOLE_STATIC_LIBRARIES += spine_static
# LOCAL_WHOLE_STATIC_LIBRARIES += cocos_network_static


include $(BUILD_SHARED_LIBRARY)

$(call import-module,.)
$(call import-module,audio/android)
$(call import-module,editor-support/cocostudio)
$(call import-module,ui)
$(call import-module,extensions)
# $(call import-module,Box2D)

# $(call import-module,editor-support/cocosbuilder)
# $(call import-module,editor-support/spine)
# $(call import-module,network)
