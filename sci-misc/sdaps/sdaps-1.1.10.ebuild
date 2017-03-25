EAPI="5"
PYTHON_COMPAT=( python2_7 ) #test pypy
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Scripts for data acquisition with paper-based surveys"
HOMEPAGE="http://sdaps.org/"
SRC_URI="http://sdaps.org/releases/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"

IUSE="barcode gtk reports odt latex convert debug"

DEPEND="${PYTHON_DEPS} dev-python/python-distutils-extra[${PYTHON_USEDEP}] virtual/pkgconfig"

RDEPEND="${PYTHON_DEPS} dev-python/pycairo[${PYTHON_USEDEP}] media-libs/tiff"
RDEPEND="${RDEPEND} barcode? ( media-gfx/zbar[python,${PYTHON_USEDEP}] )"
RDEPEND="${RDEPEND} gtk? ( x11-libs/gtk+ dev-python/pygobject[${PYTHON_USEDEP}] )"
RDEPEND="${RDEPEND} reports? ( dev-python/reportlab[${PYTHON_USEDEP}] 
|| ( dev-python/pillow[${PYTHON_USEDEP}] dev-python/imaging[${PYTHON_USEDEP}] ) )"
RDEPEND="${RDEPEND} odt? ( dev-python/pdftools[${PYTHON_USEDEP}] 
|| ( app-text/pdftk[${PYTHON_USEDEP}] dev-python/pyPdf[${PYTHON_USEDEP}] ) )"
RDEPEND="${RDEPEND} latex? ( virtual/latex-base dev-texlive/texlive-latexextra 
dev-texlive/texlive-latexrecommended dev-tex/pgf dev-tex/latex-beamer dev-texlive/texlive-science )"
RDEPEND="${RDEPEND} convert? ( media-libs/opencv[python,${PYTHON_USEDEP}] 
dev-python/python-poppler[${PYTHON_USEDEP}] dev-python/pygobject[${PYTHON_USEDEP}] )"
RDEPEND="${RDEPEND} debug? ( dev-python/python-poppler[${PYTHON_USEDEP}] dev-python/pygobject[${PYTHON_USEDEP}] )"

src_compile() {
	distutils-r1_src_compile
}

src_install() {
	distutils-r1_src_install
}

