EAPI=6
PYTHON_COMPAT=( python3_{8,9,10} )

inherit distutils-r1

DESCRIPTION="Package release manager for ROS."
HOMEPAGE="https://wiki.ros.org/wstool"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz -> ${P}-overlay.tar.gz"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

LICENSE="BSD"
SLOT="0"

RDEPEND="
        >=dev-python/catkin_pkg-0.4.3[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>=dev-python/vcstools-0.1.22[${PYTHON_USEDEP}]
        >=dev-util/rosdep-0.15.0[${PYTHON_USEDEP}]
        >=dev-python/rosdistro-0.8.0[${PYTHON_USEDEP}]
        dev-python/empy[${PYTHON_USEDEP}]
        dev-python/python-dateutil[${PYTHON_USEDEP}]
"
DEPEND="
	${RDEPEND}
"

DISTUTILS_IN_SOURCE_BUILD="yes"

# PATCHES=("${FILESDIR}/fix-python3-generation.patch")
