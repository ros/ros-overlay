EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="The installer for ROS"
HOMEPAGE="http://wiki.ros.org/rosinstall"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		>=dev-python/vcstools-0.1.30[${PYTHON_USEDEP}]
		>=dev-python/rosdistro-0.3.0[${PYTHON_USEDEP}]
		>=dev-python/wstool-0.1.0[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
