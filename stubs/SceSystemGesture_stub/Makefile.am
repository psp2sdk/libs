# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceSystemGesture-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x0d941b90 0x13ad2218 0x480564c9 0x5570b83e 	\
	0x6078a08b 0x74724147 0x789d867c 0x851fb144 	\
	0xa9db29f6 0xb3875104 0xbab8eccb 0xc3367370 	\
	0xc750d3da 0xdf4c665a 0xe0577765 0xf0db1ae5 	\
	0xfd5a6504

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceSystemGesture_stub.a
libSceSystemGesture_stub_a_SOURCES = SceSystemGesture_stub.S
am_libSceSystemGesture_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceSystemGesture_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceSystemGesture_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceSystemGesture_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
