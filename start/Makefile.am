# Copyright (C) 2015 PSP2SDK Project
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

install-exec-hook: psp2.specs psp2.x
	$(mkinstalldirs) $(DESTDIR)$(libdir) $(multilibdir)
	$(INSTALL_DATA) psp2.specs $(multilibdir)
	$(INSTALL_DATA) psp2.x $(DESTDIR)$(exec_prefix)

uninstall-hook:
	rm -f $(DESTDIR)$(libdir)/psp2.x
