#PRODUCT_MAKEFILES := \
#    $(LOCAL_DIR)/evervolv_inc.mk \
#    $(LOCAL_DIR)/evervolv_supersonic.mk \
#    $(LOCAL_DIR)/evervolv_heroc.mk \
#    $(LOCAL_DIR)/evervolv_glacier.mk

#Temporary work around... * cocide
ifeq ($(TARGET_PRODUCT),evervolv_inc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_inc.mk
else ifeq ($(TARGET_PRODUCT),evervolv_supersonic)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_supersonic.mk
else ifeq ($(TARGET_PRODUCT),evervolv_pyramid)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_pyramid.mk
else ifeq ($(TARGET_PRODUCT),evervolv_shooter)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_shooter.mk
else ifeq ($(TARGET_PRODUCT),evervolv_speedy)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_speedy.mk
else ifeq ($(TARGET_PRODUCT),evervolv_vision)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_vision.mk
else ifeq ($(TARGET_PRODUCT),evervolv_heroc)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_heroc.mk
else ifeq ($(TARGET_PRODUCT),evervolv_glacier)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_glacier.mk
else ifeq ($(TARGET_PRODUCT),evervolv_passion)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_passion.mk
else ifeq ($(TARGET_PRODUCT),evervolv_harmony)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_harmony.mk
else ifeq ($(TARGET_PRODUCT),evervolv_crespo)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_crespo.mk
else ifeq ($(TARGET_PRODUCT),evervolv_crespo4g)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_crespo4g.mk
else ifeq ($(TARGET_PRODUCT),evervolv_liberty)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_liberty.mk
else ifeq ($(TARGET_PRODUCT),evervolv_desirec)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_desirec.mk
else ifeq ($(TARGET_PRODUCT),evervolv_vivow)
  PRODUCT_MAKEFILES := $(LOCAL_DIR)/evervolv_vivow.mk
endif

