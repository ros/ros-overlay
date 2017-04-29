EAPI=6
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Catkin package system."
HOMEPAGE="http://wiki.ros.org/catkin_pkg"
SRC_URI="https://github.com/ros/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
