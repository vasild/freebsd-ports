# Created by: Mikolaj Golub <to.my.trociny@gmail.com>
# $FreeBSD$

PORTNAME=	hastmon
PORTVERSION=	0.3.2
CATEGORIES=	net-mgmt
MASTER_SITES=	GOOGLE_CODE

MAINTAINER=	trociny@FreeBSD.org
COMMENT=	Cluster monitoring daemon

LICENSE=	BSD2CLAUSE

BROKEN=		Unfetchable (google code has gone away)

BUILD_DEPENDS=	mk-configure>=0.20:devel/mk-configure

USES=		ssl
MKCMAKE?=	${LOCALBASE}/bin/mkcmake
INSTALL_TARGET=	installdirs install

PORTDOCS=	ChangeLog COPYRIGHT README

post-patch:
	${REINPLACE_CMD} \
		-e "s|\(-lcrypto\)|-L${OPENSSLLIB} \1|g" \
		-e "s|\(-DHAVE_CRYPTO\)|-I${OPENSSLINC} \1|g" \
		${WRKSRC}/hastmon/Makefile \
		${WRKSRC}/hastmonctl/Makefile

do-build:
	${SETENV} ${MKCMAKE_ENV} ${MKCMAKE} -C ${WRKSRC}

do-install:
	${SETENV} ${MKCMAKE_ENV} DESTDIR=${STAGEDIR} \
		${MKCMAKE} -C ${WRKSRC} ${INSTALL_TARGET}

	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for doc in ${PORTDOCS}
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/${doc} ${STAGEDIR}${DOCSDIR}
.endfor

.include <bsd.port.mk>
