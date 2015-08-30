# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceFpu-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x19881ec8 0x33e1ac14 0x35652326 0x4d1ae0f1 	\
	0x53ff26af 0x64a8f9fe 0x6fbda1c9 0x936f0d27 	\
	0xa3a88ad0 0xabbb6168 0xc8a4989b 0xdb66ba89 	\
	0xdf622e56 0xefa16c6e

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceFpu_stub.a
libSceFpu_stub_a_SOURCES = SceFpu_stub.S
am_libSceFpu_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceFpu_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceFpu_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceFpu_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
