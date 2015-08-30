# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceDTrace-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x413c420e 0x63f0c4f5 0x761062e9 0xa47807d7 	\
	0xb8232491 0xf2c9207a

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceDTrace_stub.a
libSceDTrace_stub_a_SOURCES = SceDTrace_stub.S
am_libSceDTrace_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceDTrace_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceDTrace_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceDTrace_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
