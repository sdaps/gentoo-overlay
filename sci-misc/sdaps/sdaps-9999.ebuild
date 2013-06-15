# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $

EAPI="5"

inherit eutils distutils
if [[ ${PV} == "9999" ]] ; then
	inherit git-2
	EGIT_REPO_URI="https://github.com/sdaps/sdaps.git"
	SRC_URI=""
else
	SRC_URI="http://sdaps.org/releases/${P}.tar.gz"
	KEYWORDS="~amd64 ~x86"
fi


DESCRIPTION="Scripts for data acquisition with paper-based surveys"

DEPEND="dev-python/python-distutils-extra media-libs/tiff dev-python/pycairo ||
( dev-python/pyPdf app-text/pdftk )"
RDEPEND="x11-libs/gtk+ dev-python/pygobject dev-python/imaging
dev-python/reportlab media-gfx/zbar[python]"
RDEPEND="${RDEPEND} latex? ( virtual/latex-base dev-texlive/texlive-latexextra
dev-tex/pgf dev-tex/latex-beamer dev-texlive/texlive-science )"
RDEPEND="${RDEPEND} debug? ( dev-python/python-poppler )"

LICENSE="GPL-3"
HOMEPAGE="http://sdaps.org/"

SLOT="0"
IUSE="latex debug"
RESTRICT=""

src_compile() {
	distutils_src_compile
}

src_install() {
	distutils_src_install
}

