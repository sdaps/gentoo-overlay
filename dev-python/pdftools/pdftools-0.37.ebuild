EAPI=5
PYTHON_COMPAT=( python2_7 )

inherit distutils

DESCRIPTION="Python PDFTools"
HOMEPAGE="http://www.boddie.org.uk/david/Projects/Python/pdftools/index.html"
SRC_URI="http://www.boddie.org.uk/david/Projects/Python/pdftools/Software/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_install() {
	distutils_src_install
}

