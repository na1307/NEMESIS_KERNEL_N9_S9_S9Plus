obj-$(CONFIG_VIDEO_EXYNOS_MFC)		+= mfc/
obj-$(CONFIG_VIDEO_EXYNOS_SMFC)		+= smfc/
obj-$(CONFIG_VIDEO_EXYNOS_SCALER)       += scaler/
obj-$(CONFIG_VIDEO_EXYNOS_G2D1SHOT) += g2d1shot/
ifeq ($(CONFIG_CAMERA_CROWN),y)
obj-$(CONFIG_VIDEO_EXYNOS_FIMC_IS2)	+= fimc-is2/
else
obj-$(CONFIG_VIDEO_EXYNOS_FIMC_IS2)	+= fimc-is2_star/
endif
obj-$(CONFIG_VIDEO_EXYNOS_CAMREA_POSTPROCESS)	+= camera-pp/
obj-$(CONFIG_VIDEO_EXYNOS_REPEATER)    += repeater/
obj-$(CONFIG_VIDEO_EXYNOS_TSMUX)       += tsmux/
obj-$(CONFIG_VIDEO_EXYNOS_ASTC)         += astc/
EXTRA_CLAGS += -Idrivers/media/video
