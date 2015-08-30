# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceClipboard-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x43a94d3e 0x5bb10cc2

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceClipboard_stub.a
libSceClipboard_stub_a_SOURCES = SceClipboard_stub.S
am_libSceClipboard_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceClipboard_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceClipboard_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceClipboard_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
