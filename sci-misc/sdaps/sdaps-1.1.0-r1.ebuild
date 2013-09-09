# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $

EAPI="3"

inherit eutils distutils

DESCRIPTION="Scripts for data acquisition with paper-based surveys"

DEPEND="dev-python/python-distutils-extra media-libs/tiff dev-python/pycairo ||
( dev-python/pyPdf app-text/pdftk )"
RDEPEND="x11-libs/gtk+ dev-python/pygobject 
|| ( dev-python/pillow dev-python/imaging )
dev-python/reportlab media-gfx/zbar[python]"
RDEPEND="${RDEPEND} latex? ( virtual/latex-base dev-texlive/texlive-latexextra
dev-tex/pgf dev-tex/latex-beamer dev-texlive/texlive-science )"
RDEPEND="${RDEPEND} debug? ( dev-python/python-poppler )"
LICENSE="GPL-3"
HOMEPAGE="http://sdaps.org/"

SRC_URI="http://sdaps.org/releases/${P}.tar.gz"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="latex debug"
RESTRICT=""

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install
}

