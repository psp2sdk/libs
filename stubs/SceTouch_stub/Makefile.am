# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceTouch-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x10a2ca25 0x169a1d58 0x1b9c5d14 0x26531526 	\
	0x41194411 0xb18370c2 0xff082df0

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceTouch_stub.a
libSceTouch_stub_a_SOURCES = SceTouch_stub.S
am_libSceTouch_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceTouch_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceTouch_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceTouch_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
