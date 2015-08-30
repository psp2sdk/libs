# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

PREFIX = _SceAppMgr-0001_
ENTRIES_PREFIX = $(PREFIX)F00_

NIDS = 0x10b5765f 0x5e86319a 0xe352b29c 0xe6774abc 	\
	0xad9022a1 0xafceab96 0xf3717e37

ENTRIES = $(call GET_ENTRIES,$(ENTRIES_PREFIX),$(NIDS))

lib_LIBRARIES = libSceAppMgr_stub.a
libSceAppMgr_stub_a_SOURCES = SceAppMgrUser_stub.S SceAppMgr_stub.S
am_libSceAppMgr_stub_a_OBJECTS = $(call GET_OBJECTS,$(PREFIX),$(ENTRIES))

$(PREFIX)head.o: $(libSceAppMgr_stub_a_SOURCES)
	$(COMPILE_HEAD)

$(PREFIX)NIDS.o: $(libSceAppMgr_stub_a_SOURCES)
	$(COMPILE_NIDS)

$(ENTRIES): $(libSceAppMgr_stub_a_SOURCES)
	$(call COMPILE_ENTRIES,$(ENTRIES_PREFIX))
