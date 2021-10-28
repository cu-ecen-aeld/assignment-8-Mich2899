##############################################################
#
# AESDCHARDRIVERdriver
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
AESDCHARDRIVER_VERSION = 76d9560fb81bb18f840303e840ec26d7b7b1bcc1
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESDCHARDRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Mich2899.git
AESDCHARDRIVER_SITE_METHOD = git
AESDCHARDRIVER_GIT_SUBMODULES = YES
AESDCHARDRIVER_MODULE_SUBDIRS = aesd-char-driver/


# TODO add your misc-modules and the scull components to the installation steps below
define AESDCHARDRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/* $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))