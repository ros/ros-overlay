EAPI=5
PYTHON_COMPAT=( python{2_7,3_3} )

inherit distutils-r1

DESCRIPTION="Bloom Release System for ROS."
HOMEPAGE="http://wiki.ros.org/bloom"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/0.5.20.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="dev-python/docutils[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
