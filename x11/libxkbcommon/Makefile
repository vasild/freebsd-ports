# $FreeBSD$

PORTNAME=	libxkbcommon
PORTVERSION=	0.5.0
PORTREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	http://xkbcommon.org/download/

MAINTAINER=	x11@FreeBSD.org
COMMENT=	Keymap handling library for toolkits and window systems

LICENSE=	MIT

XORG_CAT=	lib
USES=		gmake bison tar:xz

USE_XORG=	xcb
MAKE_JOBS_UNSAFE=	yes
INSTALL_TARGET=	install-strip

CONFIGURE_ARGS=	--without-default-layout \
		--without-default-model \
		--without-default-options \
		--without-default-rules \
		--without-default-variant \
		--without-doxygen

.include <bsd.port.mk>
