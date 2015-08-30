# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceMt19937-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x29e43bb5 0xee5ba27c

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceMt19937_stub.a
libSceMt19937_stub_a_SOURCES = SceMt19937_stub.S
am_libSceMt19937_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceMt19937_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceMt19937_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceMt19937_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
