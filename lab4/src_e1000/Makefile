# SPDX-License-Identifier: GPL-2.0

KDIR ?= ../linux/build

default:
	$(MAKE) -C $(KDIR) M=$$PWD
	
ra:
    $(MAKE) -C $(KDIR) M=$$PWD rust-analyzer
