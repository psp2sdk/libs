# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceAudiodec-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x445c2cef 0x45719b9d 0x4dfd3aaa 0x56085dfb 	\
	0x68f4a9cb 0x8018aa9b 0x883b0cf5 0xccdaba04 	\
	0xdb712abc 0xe4ea05bb 0xe7a24e16 0xf72f9b64

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceAudiodec_stub.a
libSceAudiodec_stub_a_SOURCES = SceAudiodecUser_stub.S
am_libSceAudiodec_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceAudiodec_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceAudiodec_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceAudiodec_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
