# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceNpManager-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x04d9f484 0x19e40ae1 0x3b0ae9a9 0x3c94b4b4 	\
	0x43dc48a1 0x44239c35 0x54060df6 0x60c575b1 	\
	0xaf0073b2 0xd9e6e56c 0xfe835967

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceNpManager_stub.a
libSceNpManager_stub_a_SOURCES = SceNpManager_stub.S
am_libSceNpManager_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceNpManager_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceNpManager_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceNpManager_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
