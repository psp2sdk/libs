# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

GET_ENTRIES = $(addsuffix .o,$(addprefix $1,$(subst 0x,,$2)))
GET_OBJECTS = $1head.o $1NIDS.o $2

COMPILE_WITH_MACRO = $(AM_V_CC)$(COMPILE) -D$1 $< -c -o $@
COMPILE_HEAD = $(call COMPILE_WITH_MACRO,HEAD)
COMPILE_NIDS = $(call COMPILE_WITH_MACRO,NIDS)
COMPILE_ENTRIES = $(call COMPILE_WITH_MACRO,FUNC=$(subst $1,0x,$*))
