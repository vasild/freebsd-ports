# Created by: dbaker
# $FreeBSD$

PORTNAME=	dnetc
PORTVERSION=	${VERSION}
PORTREVISION=	${REVISION}
PORTEPOCH=	1
CATEGORIES=	misc
MASTER_SITES=	http://http.distributed.net/pub/dcti/v${PORTVERSION:R}/ \
		ftp://ftp.distributed.net/pub/dcti/v${PORTVERSION:R}/
# This is architecture dependent
DISTNAME=	dnetc${PORTVERSION:E}-freebsd-${ARCH:S/i386/x86/}-elf

MAINTAINER=	tdb@FreeBSD.org
COMMENT=	Distributed.net distributed computing project client

# These are architecture dependent
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd-${ARCH:S/i386/x86/}-elf
DISTINFO_FILE=	${MASTERDIR}/distinfo.${ARCH}

ONLY_FOR_ARCHS=	i386 sparc64 amd64 powerpc

USE_RC_SUBR=	dnetc
NO_BUILD=	yes

BINDIR=		${PREFIX}/distributed.net

USERS=		dnetc
GROUPS=		dnetc

PKGMESSAGE=	${WRKDIR}/pkg-message

SUB_FILES=	pkg-message
SUB_LIST=	BINDIR="${BINDIR}"

.include <bsd.port.pre.mk>

.if ${ARCH} == i386
.if ${OSVERSION} >= 900044
VERSION=	2.9112.521
DISTNAME=	dnetc${PORTVERSION:E}-freebsd9-${ARCH:S/i386/x86/}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd9-${ARCH:S/i386/x86/}
.else
VERSION=	2.9110.519
REVISION=	1
DISTNAME=	dnetc${PORTVERSION:E}-freebsd8-${ARCH:S/i386/x86/}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd8-${ARCH:S/i386/x86/}
.endif

.elif ${ARCH} == amd64
.if ${OSVERSION} >= 1000100
VERSION=	2.9112.521
DISTNAME=	dnetc${PORTVERSION:E}-freebsd10-${ARCH}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd10-${ARCH}
.elif ${OSVERSION} >= 900044
VERSION=	2.9112.521
DISTNAME=	dnetc${PORTVERSION:E}-freebsd9-${ARCH}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd9-${ARCH}
.else
VERSION=	2.9110.519
REVISION=	1
DISTNAME=	dnetc${PORTVERSION:E}-freebsd8-${ARCH}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd8-${ARCH}
.endif

.elif ${ARCH} == sparc64
VERSION=	2.9109.518
REVISION=	1
DISTNAME=	dnetc${PORTVERSION:E}-freebsd8-${ARCH}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd8-${ARCH}

.elif ${ARCH} == powerpc
VERSION=	2.9109.518
REVISION=	1
DISTNAME=	dnetc${PORTVERSION:E}-freebsd8-${ARCH}
WRKSRC=		${WRKDIR}/dnetc${PORTVERSION:E}-freebsd8-${ARCH}
.endif

do-install:
	${MKDIR} ${STAGEDIR}${BINDIR}
	${INSTALL_PROGRAM} ${WRKSRC}/dnetc ${STAGEDIR}${BINDIR}
	${INSTALL_MAN} ${WRKSRC}/dnetc.1 ${STAGEDIR}${PREFIX}/man/man1
	${INSTALL} -c -m 644 ${FILESDIR}/dnetc.ini ${STAGEDIR}${BINDIR}/dnetc.ini.sample

.include <bsd.port.post.mk>
