# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceNpParty-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x0560d9a1 0x324c76f0 0x420c30e9 0x9f99adf7 	\
	0xb304962c 0xb6132502 0xf524ad2b 0xfb200a6d

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceNpParty_stub.a
libSceNpParty_stub_a_SOURCES = SceNpPartyGameUtil_stub.S
am_libSceNpParty_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceNpParty_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceNpParty_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceNpParty_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
