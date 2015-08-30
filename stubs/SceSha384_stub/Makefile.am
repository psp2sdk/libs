# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSha384-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x037aabe7 0x30d5c919 0x4b99dbb8 0xa602c694

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSha384_stub.a
libSceSha384_stub_a_SOURCES = SceSha384_stub.S
am_libSceSha384_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSha384_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSha384_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSha384_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
