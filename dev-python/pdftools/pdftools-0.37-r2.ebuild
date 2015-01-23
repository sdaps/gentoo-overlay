EAPI=5
PYTHON_COMPAT=( python2_7 ) #test pypy
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Python PDFTools"
HOMEPAGE="http://www.boddie.org.uk/david/Projects/Python/pdftools/index.html"
SRC_URI="http://www.boddie.org.uk/david/Projects/Python/pdftools/Software/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND="${PYTHON_DEPS}"
DEPEND="${PYTHON_DEPS}"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_install() {
	distutils-r1_src_install
}

