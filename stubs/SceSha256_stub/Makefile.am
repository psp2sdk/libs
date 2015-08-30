# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSha256-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x9b5bb4ba 0xa337079c 0xdaeca1f8 0xe281374f

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSha256_stub.a
libSceSha256_stub_a_SOURCES = SceSha256_stub.S
am_libSceSha256_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSha256_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSha256_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSha256_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
