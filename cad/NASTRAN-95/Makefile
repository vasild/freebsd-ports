# Created by: Pedro Giffuni
# $FreeBSD$

PORTNAME=	NASTRAN-95
PORTVERSION=	20151227
PORTREVISION=	1
CATEGORIES=	cad science

MAINTAINER=	ports@FreeBSD.org
COMMENT=	NASA Structural Analysis System

LICENSE=	NOSA
LICENSE_NAME=   NASA OPEN SOURCE AGREEMENT VERSION 1.3
LICENSE_FILE=	${FILESDIR}/NASTRAN95-license.txt
LICENSE_PERMS= dist-mirror dist-sell pkg-mirror pkg-sell auto-accept

USE_GITHUB=	yes
GH_ACCOUNT=	twuerfl
GH_TAGNAME=	0e77a84

USES=		fortran gmake

ALL_TARGET=	# empty
INSTALL_TARGET=install-strip

NASTHOME= 	${PREFIX}/libexec/${PORTNAME}
PLIST_SUB=	NASTHOME=${NASTHOME}

pre-build:
	@${REINPLACE_CMD} -e 's+%%FC%%+${FC}+g ; s+%%FFLAGS%%+${FFLAGS}+g;' \
		${WRKSRC}/sb/Makefile \
		${WRKSRC}/um/Makefile
# Version string limited to 7 characters so ${OPSYS:tu} would result in
# "DRAGONF VERSON" for DF.  It's best to leave it hardcoded to FreeBSD
	@${REINPLACE_CMD} -e 's+LINUX  +FREEBSD+g;' \
		${WRKSRC}/sb/btstrp.f

do-build:
	@(cd ${WRKSRC}/sb; ${MAKE_CMD} ${ALL_TARGET})
	@(cd ${WRKSRC}/um; ${MAKE_CMD} ${ALL_TARGET})
	@(cd ${WRKSRC}/utility; ${FC} -o chkfil.exe ${FFLAGS} chkfil.f ${LDFLAGS})

do-install:
	@${REINPLACE_CMD} -e 's+%%NASTHOME%%+${NASTHOME}+g' \
		${WRKSRC}/bin/nastran
	${INSTALL_SCRIPT} ${WRKSRC}/bin/nastran ${STAGEDIR}${PREFIX}/bin/
	@${MKDIR} ${STAGEDIR}${NASTHOME}/bin
	${INSTALL} ${WRKSRC}/sb/nastran.exe ${STAGEDIR}${NASTHOME}/bin/nastrn.exe
	${INSTALL} ${WRKSRC}/utility/chkfil.exe ${STAGEDIR}${NASTHOME}/bin/
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/*.pdf	${STAGEDIR}${DOCSDIR}
.for dir in rf
	(cd ${WRKSRC} && ${COPYTREE_SHARE} ${dir} ${STAGEDIR}${NASTHOME})
.endfor
	@${MKDIR} ${STAGEDIR}${NASTHOME}/um/
	${INSTALL} ${WRKSRC}/um/nasthelp.exe ${STAGEDIR}${NASTHOME}/um/
	${INSTALL_DATA} ${WRKSRC}/um/*.TXT ${STAGEDIR}${NASTHOME}/um/
.for dir in demoout inp test
	(cd ${WRKSRC} && ${COPYTREE_SHARE} ${dir} ${STAGEDIR}${EXAMPLESDIR})
.endfor
.include <bsd.port.mk>
