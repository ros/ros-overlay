EAPI=6
PYTHON_COMPAT=( python3_5 )

inherit distutils-r1

DESCRIPTION="Package release manager for ROS."
HOMEPAGE="https://wiki.ros.org/wstool"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/${PV}.tar.gz -> ${P}-overlay.tar.gz"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

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

PATCHES="( ${FILESDIR}/test-fixes.patch )"
DISTUTILS_IN_SOURCE_BUILD="yes"
