CPPFLAGS += \
	-DIMG_ADDRESS=$(IMG_ADDRESS)	\
	-DIMG_SIZE=$(IMG_SIZE)		\
	-DJUMP_ADDR=$(JUMP_ADDR)	\
	-DOF_OFFSET=$(OF_OFFSET)	\
	-DOF_ADDRESS=$(OF_ADDRESS)	\
	-DMEM_BANK=$(MEM_BANK)	\
	-DIMAGE_NAME="\"$(IMAGE_NAME)\""	\
	-DCMDLINE="\"$(LINUX_KERNEL_ARG_STRING)\""	\
	-DCMDLINE_FILE="\"$(LINUX_KERNEL_ARG_STRING_FILE)\""	\
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-DMACH_TYPE=$(MACH_TYPE)		\

ASFLAGS += -DJUMP_ADDR=$(JUMP_ADDR)		\
	-DTOP_OF_MEMORY=$(TOP_OF_MEMORY)	\
	-DMACH_TYPE=$(MACH_TYPE)		\

ASFLAGS += -DLINK_ADDR=$(CONFIG_LINK_ADDR)

ifeq ($(CONFIG_RAM_512MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x20000000
endif

ifeq ($(CONFIG_RAM_256MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x10000000
endif

ifeq ($(CONFIG_RAM_128MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x8000000
endif

ifeq ($(CONFIG_RAM_64MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x4000000
endif

ifeq ($(CONFIG_RAM_32MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x2000000
endif

ifeq ($(CONFIG_RAM_8MB), y)
CPPFLAGS += \
	-DMEM_SIZE=0x800000
endif

ifeq ($(CONFIG_DEBUG),y)
CPPFLAGS += -DCONFIG_DEBUG
endif

ifeq ($(CONFIG_HW_DISPLAY_BANNER),y)
BANNER:="$(CONFIG_HW_BANNER)"
CPPFLAGS += -DBANNER="$(BANNER)"
CPPFLAGS += -DCONFIG_HW_DISPLAY_BANNER
endif

ifeq ($(CONFIG_OVERRIDE_CMDLINE),y)
CPPFLAGS += -DCONFIG_OVERRIDE_CMDLINE
endif

ifeq ($(CONFIG_OVERRIDE_CMDLINE_FROM_EXT_FILE),y)
CPPFLAGS += -DCONFIG_OVERRIDE_CMDLINE_FROM_EXT_FILE
endif

ifeq ($(CONFIG_BOARD_HAS_2_BANKS),y)
CPPFLAGS += -DMEM_BANK2=$(MEM_BANK2)
endif

#ifeq ($(CONFIG_LOAD_NONE),y)
#CPPFLAGS += -DCONFIG_LOAD_NONE
#endif

ifeq ($(CONFIG_CRYSTAL_12_000MHZ),y)
CPPFLAGS += -DBOARD_MAINOSC=12000000
endif

ifeq ($(CONFIG_CRYSTAL_16_000MHZ),y)
CPPFLAGS += -DBOARD_MAINOSC=16000000
endif

ifeq ($(CONFIG_CRYSTAL_16_36766MHZ),y)
CPPFLAGS += -DBOARD_MAINOSC=16367660
endif

ifeq ($(CONFIG_CRYSTAL_18_432MHZ),y)
CPPFLAGS += -DBOARD_MAINOSC=18432000
endif

ifeq ($(CONFIG_CRYSTAL_24_000MHZ),y)
CPPFLAGS += -DBOARD_MAINOSC=24000000
endif
