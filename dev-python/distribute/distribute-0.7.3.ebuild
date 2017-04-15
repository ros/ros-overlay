EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="distribute legacy wrapper"
HOMEPAGE="http://packages.python.org/distribute"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.zip"

LICENSE="|| ( PSF ZPL )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND=">=dev-python/setuptools-0.7[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
