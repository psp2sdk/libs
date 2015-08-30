# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceIme-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x0e050613 0x71d6898a 0x7b1efaa5 0x889a8421 	\
	0xd8342d2a 0xf3bd9a76

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceIme_stub.a
libSceIme_stub_a_SOURCES = SceIme_stub.S
am_libSceIme_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceIme_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceIme_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceIme_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
