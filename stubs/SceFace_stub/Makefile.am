# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceFace-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x17f3dc79 0x37704de9 0x4468b054 0x64f45021 	\
	0x67f0585a 0x707b9a1d 0x70c9cf95 0x73e9791d 	\
	0x7d71725d 0x87550392 0x8f8e9fb1 0xa905a467 	\
	0xb794c6cb 0xc0812127 0xcc98b939 0xcf07e1c4 	\
	0xe521eb6f 0xf24b851d 0xf3045394 0xf7e4ec1f 	\
	0xf852e35d

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceFace_stub.a
libSceFace_stub_a_SOURCES = SceFace_stub.S
am_libSceFace_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceFace_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceFace_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceFace_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
