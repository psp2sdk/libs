# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceRazorCapture-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x3d4b7e68 0x3f0913cf 0x472492da 0x6a09822d 	\
	0x8ee74eb7 0x911e0aa0 0x9daa7e9c 0xd2358bfb 	\
	0xdfbdcc4c 0xe916b538

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceRazorCapture_stub.a
libSceRazorCapture_stub_a_SOURCES = SceRazorCapture_stub.S
am_libSceRazorCapture_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceRazorCapture_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceRazorCapture_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceRazorCapture_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
