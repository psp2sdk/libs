# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSfmt19937-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x2afacb0b 0xa1c654d8 0xac496c8c 0xe66f2502 	\
	0xe74ba81c 0xf0557157

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSfmt19937_stub.a
libSceSfmt19937_stub_a_SOURCES = SceSfmt19937_stub.S
am_libSceSfmt19937_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSfmt19937_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSfmt19937_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSfmt19937_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
