EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="Package manager for ROS."
HOMEPAGE="http://wiki.ros.org/rosdep"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/nose-1.0[${PYTHON_USEDEP}]
		>=dev-python/pyyaml-3.1[${PYTHON_USEDEP}]
		>=dev-python/rosdistro-0.3.0[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# @todo tests
