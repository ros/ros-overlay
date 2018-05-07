EAPI=6
PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="Standalone Python library for the Catkin package system."
HOMEPAGE="http://wiki.ros.org/${PN}"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz -> ${P}-overlay.tar.gz"

LICENSE="BSD-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]
        dev-python/argparse[${PYTHON_USEDEP}]
        dev-python/pyparsing[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
