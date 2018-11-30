EAPI=5
PYTHON_COMPAT=( python{2_7,3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="A tool for generating rosinstall files."
HOMEPAGE="http://wiki.ros.org/rosinstall_generator"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]
		dev-python/rosdistro[${PYTHON_USEDEP}]
		>=dev-python/catkin_pkg-0.1.28[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
