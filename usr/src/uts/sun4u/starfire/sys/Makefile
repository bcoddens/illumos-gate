#
# CDDL HEADER START
#
# The contents of this file are subject to the terms of the
# Common Development and Distribution License (the "License").
# You may not use this file except in compliance with the License.
#
# You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
# or http://www.opensolaris.org/os/licensing.
# See the License for the specific language governing permissions
# and limitations under the License.
#
# When distributing Covered Code, include this CDDL HEADER in each
# file and include the License file at usr/src/OPENSOLARIS.LICENSE.
# If applicable, add the following below this CDDL HEADER, with the
# fields enclosed by brackets "[]" replaced with your own identifying
# information: Portions Copyright [yyyy] [name of copyright owner]
#
# CDDL HEADER END
#
# Copyright 2009 Sun Microsystems, Inc.  All rights reserved.
# Use is subject to license terms.
#
UTSBASE	= ../../..

#
# include global definitions
#
include ../Makefile.starfire

#
# Override defaults.
#
FILEMODE	 = 644

HDRS=	cvc.h

STARHDRS=	$(UTSBASE)/sun4u/ngdr/sys/dr.h \
		$(UTSBASE)/sun4u/ngdr/sys/dr_util.h

ROOTHDRS=	$(HDRS:%=$(USR_STARFIRE_ISYS_DIR)/%)

ROOTDIR=	$(ROOT)/usr/share/src
ROOTDIRS=	$(ROOTDIR)/uts $(ROOTDIR)/uts/$(PLATFORM)

CHECKHDRS=	$(HDRS:%.h=%.check) \
		$(STARHDRS:%.h=%.check)

.KEEP_STATE:

.PARALLEL: $(CHECKHDRS) $(ROOTHDRS)

install_h: $(ROOTDIRS) .WAIT $(ROOTHDRS) $(ROOTLINK)

check:	$(CHECKHDRS)

#
# install rules
#
$(USR_STARFIRE_ISYS_DIR)/%:	% $(USR_STARFIRE_ISYS_DIR)
	$(INS.file)

$(ROOTDIRS):
	$(INS.dir)

FRC:

include ../Makefile.targ
