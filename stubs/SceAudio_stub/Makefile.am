# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceAudio-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x02db3f5f 0x12fb1767 0x5bc341e4 0x64167f11 	\
	0x69e2e6b5 0x940ce469 0x9a5370c4 0x9c8edaea 	\
	0xb8ba0d07

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceAudio_stub.a
libSceAudio_stub_a_SOURCES = SceAudio_stub.S
am_libSceAudio_stub_a_OBJECTS =	$(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceAudio_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceAudio_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceAudio_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
