# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSfmt11213-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x7a412a29 0x8ff464c9 0xafedd6e1 0xbaf5f058 	\
	0xfb281cd7 0xfd696585

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSfmt11213_stub.a
libSceSfmt11213_stub_a_SOURCES = SceSfmt11213_stub.S
am_libSceSfmt11213_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSfmt11213_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSfmt11213_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSfmt11213_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
