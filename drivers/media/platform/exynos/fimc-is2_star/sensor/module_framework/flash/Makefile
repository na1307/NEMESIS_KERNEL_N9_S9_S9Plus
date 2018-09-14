obj-$(CONFIG_CAMERA_FLASH_LM3560_OBJ) += fimc-is-flash-lm3560.o
obj-$(CONFIG_CAMERA_FLASH_RT5033_OBJ) += fimc-is-flash-rt5033.o
obj-$(CONFIG_CAMERA_FLASH_S2MPB02_OBJ) += fimc-is-flash-s2mpb02.o
obj-$(CONFIG_CAMERA_FLASH_GPIO_OBJ) += fimc-is-flash-gpio.o
obj-$(CONFIG_CAMERA_FLASH_KTD2692_OBJ) += fimc-is-flash-ktd2692.o
obj-$(CONFIG_CAMERA_FLASH_I2C_OBJ) += fimc-is-helper-flash-i2c.o \
				      fimc-is-flash-i2c.o

EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/include
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/vendor
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/hardware/api
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/sensor/module_framework
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/sensor
ifeq ($(CONFIG_COMPANION_DIRECT_USE),y)
EXTRA_CFLAGS += -Idrivers/media/platform/exynos/fimc-is2_star/vendor/mcd/preprocessor
endif
