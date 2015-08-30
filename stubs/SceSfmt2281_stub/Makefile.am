# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSfmt2281-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x17c10e2d 0x3cc47146 0x84bb4adb 0xab3ad459 	\
	0xb8e5a0bb 0xbb89d8f0

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSfmt2281_stub.a
libSceSfmt2281_stub_a_SOURCES = SceSfmt2281_stub.S
am_libSceSfmt2281_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSfmt2281_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSfmt2281_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSfmt2281_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
