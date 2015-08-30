# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceMd5-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x094a4902 0x4d6436f9 0xb845bccb 0xb94abf83

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceMd5_stub.a
libSceMd5_stub_a_SOURCES = SceMd5_stub.S
am_libSceMd5_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceMd5_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceMd5_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceMd5_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
