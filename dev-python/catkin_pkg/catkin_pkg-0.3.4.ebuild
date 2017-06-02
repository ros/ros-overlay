EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit distutils-r1

DESCRIPTION="Standalone Python library for the Catkin package system."
HOMEPAGE="http://wiki.ros.org/catkin_pkg"
SRC_URI="https://github.com/ros-infrastructure/catkin_pkg/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 arm ~arm64"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
