# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

DISPLAY_PREFIX = _SceDisplay-0001_
DISPLAY_ENTRIES_PREFIX = $(DISPLAY_PREFIX)F00_

DISPLAYUSER_PREFIX = _SceDisplayUser-0001_
DISPLAYUSER_ENTRIES_PREFIX = $(DISPLAYUSER_PREFIX)F00_

DISPLAY_NIDS = 0x05f27764 0x3e796ef5 0x5795e898 0x6bdf4c4d	\
	0x78b41b92 0x7d9864a8 0x814c90af 0x9423560c	\
	0x98436a80 0xa08ca60d 0xb6fde0ba 0xdd0a13b8

DISPLAYUSER_NIDS = 0x42ae6bbc 0x7a410b64

DISPLAY_ENTRIES = $(call GET_ENTRIES,$(DISPLAY_ENTRIES_PREFIX),$(DISPLAY_NIDS))
DISPLAYUSER_ENTRIES = $(call GET_ENTRIES,$(DISPLAYUSER_ENTRIES_PREFIX),$(DISPLAYUSER_NIDS))

lib_LIBRARIES = libSceDisplay_stub.a
libSceDisplay_stub_a_SOURCES = SceDisplay_stub.S SceDisplayUser_stub.S
am_libSceDisplay_stub_a_OBJECTS =	\
	$(call GET_OBJECTS,$(DISPLAY_PREFIX),$(DISPLAY_ENTRIES))	\
	$(call GET_OBJECTS,$(DISPLAYUSER_PREFIX),$(DISPLAYUSER_ENTRIES))

$(DISPLAY_PREFIX)head.o: SceDisplay_stub.S
	$(COMPILE_HEAD)

$(DISPLAY_PREFIX)NIDS.o: SceDisplay_stub.S
	$(COMPILE_NIDS)

$(DISPLAY_ENTRIES): SceDisplay_stub.S
	$(call COMPILE_ENTRIES,$(DISPLAY_ENTRIES_PREFIX))

$(DISPLAYUSER_PREFIX)head.o: SceDisplayUser_stub.S
	$(COMPILE_HEAD)

$(DISPLAYUSER_PREFIX)NIDS.o: SceDisplayUser_stub.S
	$(COMPILE_NIDS)

$(DISPLAYUSER_ENTRIES): SceDisplayUser_stub.S
	$(call COMPILE_ENTRIES,$(DISPLAYUSER_ENTRIES_PREFIX))
