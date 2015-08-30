# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceNpActivity-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x9ea4901f 0xbc7fdc77 0xe0ffee97

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceNpActivity_stub.a
libSceNpActivity_stub_a_SOURCES = SceNpActivity_stub.S
am_libSceNpActivity_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceNpActivity_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceNpActivity_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceNpActivity_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
