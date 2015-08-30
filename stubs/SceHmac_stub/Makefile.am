# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceHmac-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x05ae1466 0x0c9fa657 0x272feffe 0x2ab46bb5 	\
	0x359ed31e 0x393ff6bc 0x55871d87 0x5a52150f 	\
	0x64219ff5 0x6eeb05d3 0x6ef06490 0x8fdfce5b 	\
	0x96ad3a67 0x9bccc484 0x9c3b4844 0x9cb7f0ef 	\
	0x9fd439e9 0xa2285a9a 0xb77629eb 0xb786f59f 	\
	0xba308cda 0xc16d8ab6 0xccb91784 0xd0af51c6 	\
	0xd44f6b32 0xd6e232cd 0xe254d9a1 0xeca83992

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceHmac_stub.a
libSceHmac_stub_a_SOURCES = SceHmac_stub.S
am_libSceHmac_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceHmac_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceHmac_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceHmac_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
