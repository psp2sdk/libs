# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSfmt86243-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x2ff42588 0x569bf903 0x81b67ab5 0x8e25cba8 	\
	0xc297e6b1 0xf7ffe87c

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSfmt86243_stub.a
libSceSfmt86243_stub_a_SOURCES = SceSfmt86243_stub.S
am_libSceSfmt86243_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSfmt86243_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSfmt86243_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSfmt86243_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
