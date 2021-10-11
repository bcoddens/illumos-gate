/*
 * This file and its contents are supplied under the terms of the
 * Common Development and Distribution License ("CDDL"), version 1.0.
 * You may only use this file in accordance with the terms of version
 * 1.0 of the CDDL.
 *
 * A full copy of the text of the CDDL should have accompanied this
 * source.  A copy of the CDDL is also available via the Internet at
 * http://www.illumos.org/license/CDDL.
 */

/*
 * Copyright 2023 Toomas Soome <tsoome@me.com>
 */

#ifndef _CODES_H
#define	_CODES_H

#ifdef __cplusplus
extern "C" {
#endif

struct ioc {
	uint_t	code;
	const char *name;
	const char *datastruct;
};

struct iocs {
	uint_t nitems;
	const struct ioc *data;
};

extern const struct iocs vmm_iocs[];

#ifdef __cplusplus
}
#endif

#endif /* _CODES_H */
