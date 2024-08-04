TARGET := iphone:clang:16.5:14.0
INSTALL_TARGET_PROCESSES = TheosCode
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = TheosCode

TheosCode_FILES = $(wildcard *.mm)
TheosCode_FRAMEWORKS = UIKit CoreGraphics
TheosCode_OBJCCFLAGS = -Iinclude -fobjc-arc

include $(THEOS_MAKE_PATH)/application.mk
