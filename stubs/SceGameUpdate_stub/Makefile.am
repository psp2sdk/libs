# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceGameUpdate-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x14116007 0x2f401247 0x3c616238 0x48d879ba

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceGameUpdate_stub.a
libSceGameUpdate_stub_a_SOURCES = SceGameUpdate_stub.S
am_libSceGameUpdate_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceGameUpdate_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceGameUpdate_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceGameUpdate_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
