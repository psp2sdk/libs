# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceDbg-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x1af3678b 0x3deaecd3 0x6605ab19 0x941622fa 	\
	0xed4a00ba

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceDbg_stub.a
libSceDbg_stub_a_SOURCES = SceDbg_stub.S
am_libSceDbg_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceDbg_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceDbg_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceDbg_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
