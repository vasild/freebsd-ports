# $FreeBSD$

PORTNAME=	kdegraphics-thumbnailers
PORTVERSION=	${KDE4_VERSION}
CATEGORIES=	graphics kde
MASTER_SITES=	KDE/${KDE4_BRANCH}/${PORTVERSION}/src
DIST_SUBDIR=	KDE/${PORTVERSION}

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Thumbnailers for various graphics file formats

USES=		cmake:outsource kde:4 pkgconfig tar:xz
USE_KDE=	kdelibs libkdcraw libkexiv2 automoc4
USE_QT4=	gui qmake_build moc_build uic_build rcc_build

.include <bsd.port.mk>
