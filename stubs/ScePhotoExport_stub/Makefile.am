# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _ScePhotoExport-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x5655f971 0x70512321 0x84fd9fc5 0xe6e6afd5

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libScePhotoExport_stub.a
libScePhotoExport_stub_a_SOURCES = ScePhotoExport_stub.S
am_libScePhotoExport_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libScePhotoExport_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libScePhotoExport_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libScePhotoExport_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
