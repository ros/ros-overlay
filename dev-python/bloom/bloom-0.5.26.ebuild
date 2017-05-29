EAPI=5
PYTHON_COMPAT=( python{2_7,3_5} )

SCM=""
if [ "${PV#9999}" != "${PV}" ] ; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/ros-infrastructure/bloom"
fi

inherit distutils-r1

DESCRIPTION="Commands to manage several local SCM repositories for ROS"
HOMEPAGE="http://wiki.ros.org/wstool"
SRC_URI="http://download.ros.org/downloads/${PN}/${P}.tar.gz
		http://github.com/ros-infrastructure/bloom/archive/${PV}.tar.gz -> ${P}.tar.gz
		"
KEYWORDS="~amd64 ~x86 ~arm"

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
