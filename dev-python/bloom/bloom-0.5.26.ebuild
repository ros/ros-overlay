EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit distutils-r1

DESCRIPTION="Package release manager for ROS."
HOMEPAGE="http://wiki.ros.org/wstool"
SRC_URI="http://github.com/ros-infrastructure/bloom/archive/${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="amd64 x86 arm ~arm64"

LICENSE="BSD"
SLOT="0"

RDEPEND="
	dev-python/pyyaml[${PYTHON_USEDEP}]
	>=dev-python/vcstools-0.1.38[${PYTHON_USEDEP}]
"
DEPEND="
	${RDEPEND}
	dev-python/sphinx
"

DISTUTILS_IN_SOURCE_BUILD="yes"
