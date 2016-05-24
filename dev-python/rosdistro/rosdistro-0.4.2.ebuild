EAPI=5
PYTHON_COMPAT=( python{2_7,3_4,3_5} )

inherit distutils-r1

DESCRIPTION="A tool to work with rosdistro files"
HOMEPAGE="http://wiki.ros.org/rosdistro"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
