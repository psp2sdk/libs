# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceNpSnsFacebook-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x32fb2721 0x80557aa0 0x9a87eee9 0x9cf1bc76 	\
	0xa3c9041d 0xa537ff90 0xa71e6847

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceNpSnsFacebook_stub.a
libSceNpSnsFacebook_stub_a_SOURCES = SceNpSnsFacebook_stub.S
am_libSceNpSnsFacebook_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceNpSnsFacebook_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceNpSnsFacebook_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceNpSnsFacebook_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
