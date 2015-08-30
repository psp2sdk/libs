# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceMusicExport-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x08000579

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceMusicExport_stub.a
libSceMusicExport_stub_a_SOURCES = SceMusicExport_stub.S
am_libSceMusicExport_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceMusicExport_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceMusicExport_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceMusicExport_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
