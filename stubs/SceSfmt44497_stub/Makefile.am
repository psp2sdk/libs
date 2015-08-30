# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSfmt44497-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x16d8aa5e 0x1c38322a 0x908f1122 0xcf1c8c38 	\
	0xd411a9a6 0xf869dfdc

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSfmt44497_stub.a
libSceSfmt44497_stub_a_SOURCES = SceSfmt44497_stub.S
am_libSceSfmt44497_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSfmt44497_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSfmt44497_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSfmt44497_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
