/*	$OpenBSD: pathnames.h,v 1.5 2002/10/25 18:35:33 camield Exp $	*/

/*
 * Copyright (C) 2002 Chris Kuethe (ckuethe@ualberta.ca)
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the author nor the names of contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#define PATH_CONFFILE		"%%PREFIX%%/etc/authpf/authpf.conf"
#define PATH_ALLOWFILE		"%%PREFIX%%/etc/authpf/authpf.allow"
#define PATH_PFRULES		"%%PREFIX%%/etc/authpf/authpf.rules"
#define PATH_PROBLEM		"%%PREFIX%%/etc/authpf/authpf.problem"
#define PATH_MESSAGE		"%%PREFIX%%/etc/authpf/authpf.message"
#define PATH_USER_DIR		"%%PREFIX%%/etc/authpf/users"
#define PATH_BAN_DIR		"%%PREFIX%%/etc/authpf/banned"
#define PATH_DEVFILE		"/dev/pf"
#define PATH_PIDFILE		"/var/authpf"
#define PATH_AUTHPF_SHELL	"%%PREFIX%%/sbin/authpf"
