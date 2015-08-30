# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceNetCtl-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x0961a561 0x495ca1db 0x4ddd6149 0x4fb4bea1 	\
	0x6b20ec02 0x6d26ac68 0x7118c99d 0x77586c59 	\
	0x7ae0ed19 0xa4471e10 0xb26d07f3 0xcd188648 	\
	0xd0c3bf3f 0xda130450 0xdffc3ed4 0xeaee6185 	\
	0xed43b79a 0xffa9d594

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceNetCtl_stub.a
libSceNetCtl_stub_a_SOURCES = SceNetCtl_stub.S
am_libSceNetCtl_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceNetCtl_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceNetCtl_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceNetCtl_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
