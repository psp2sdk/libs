# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

include $(top_srcdir)/stubs/common.mk

APPMGR_PREFIX = _SceAppMgr-0001_
APPMGR_ENTRIES_PREFIX = $(PREFIX)F00_

APPMGRUSER_PREFIX = _SceAppMgrUser-0001_
APPMGRUSER_ENTRIES_PREFIX = $(APPMGRUSER_PREFIX)F00_

APPMGR_NIDS = 0x10b5765f 0x5e86319a 0xe352b29c 0xe6774abc
APPMGRUSER_NIDS = 0xad9022a1 0xafceab96 0xf3717e37

APPMGR_ENTRIES = $(call GET_ENTRIES,$(APPMGR_ENTRIES_PREFIX),$(APPMGR_NIDS))
APPMGRUSER_ENTRIES = $(call GET_ENTRIES,$(APPMGRUSER_ENTRIES_PREFIX),$(APPMGRUSER_NIDS))

lib_LIBRARIES = libSceAppMgr_stub.a
libSceAppMgr_stub_a_SOURCES = SceAppMgrUser_stub.S SceAppMgr_stub.S
am_libSceAppMgr_stub_a_OBJECTS =	\
	$(call GET_OBJECTS,$(APPMGR_PREFIX),$(APPMGRUSER_ENTRIES))	\
	$(call GET_OBJECTS,$(APPMGRUSER_PREFIX),$(APPMGRUSER_ENTRIES))

$(APPMGR_PREFIX)head.o: SceAppMgr_stub.S
	$(COMPILE_HEAD)

$(APPMGR_PREFIX)NIDS.o: SceAppMgr_stub.S
	$(COMPILE_NIDS)

$(APPMGR_ENTRIES): SceAppMgr_stub.S
	$(call COMPILE_ENTRIES,$(APPMGRUSER_ENTRIES_PREFIX))

$(APPMGRUSER_PREFIX)head.o: SceAppMgrUser_stub.S
	$(COMPILE_HEAD)

$(APPMGRUSER_PREFIX)NIDS.o: SceAppMgrUser_stub.S
	$(COMPILE_NIDS)

$(APPMGRUSER_ENTRIES): SceAppMgrUser_stub.S
	$(call COMPILE_ENTRIES,$(APPMGRUSER_ENTRIES_PREFIX))
