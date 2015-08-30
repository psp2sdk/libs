# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSha0-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x37ef2afc 0xbcf6db3a 0xbf0158c4 0xd19a9aa8

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSha0_stub.a
libSceSha0_stub_a_SOURCES = SceSha0_stub.S
am_libSceSha0_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSha0_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSha0_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSha0_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
