CROSS_COMPILE=arm-none-eabi-
ARM_CPU=cortex-a9
PF_NO_UNALIGNED := $(call cc-option, -mno-unaligned-access,)
PLATFORM_CPPFLAGS += $(call cc-option,-mcpu=cortex-a9  -ffixed-r8 -mno-long-calls  -Wall -fPIC )
PLATFORM_CPPFLAGS += $(PF_NO_UNALIGNED)
#USE_PRIVATE_LIBGCC=yes
TEXT_BASE=$(CONFIG_SYS_TEXT_BASE)
UCL_TEXT_BASE=$(CONFIG_SYS_UCL_TEXT_BASE)
#$(warning $(PLATFORM_CPPFLAGS))
