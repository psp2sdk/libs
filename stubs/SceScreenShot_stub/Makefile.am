# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceScreenShot-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x05db59c7 0x50ae9ff9 0x7061665b 0x76e674d1 	\
	0x816633fe 0xbae9e534 0xd509fb08 0xda80a228

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceScreenShot_stub.a
libSceScreenShot_stub_a_SOURCES = SceScreenShot_stub.S
am_libSceScreenShot_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceScreenShot_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceScreenShot_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceScreenShot_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
