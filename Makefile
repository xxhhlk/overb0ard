ARCHS=armv7 armv7s arm64 arm64e
TARGET = iphone:clang:latest:6.0

include $(THEOS)/makefiles/common.mk

TOOL_NAME = jetsamctl
jetsamctl_CFLAGS = -Wall -Wpedantic -Wextra -Wunused-variable -Wobjc-method-access -Werror -Wformat -Iinclude
jetsamctl_FILES = main.m
jetsamctl_CODESIGN_FLAGS = -Sentitlements.xml
include $(THEOS)/makefiles/tool.mk

