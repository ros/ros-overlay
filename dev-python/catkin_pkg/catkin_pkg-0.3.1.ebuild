EAPI=5
PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Standalone Python library for the Catkin package system."
HOMEPAGE="http://wiki.ros.org/catkin_pkg"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
