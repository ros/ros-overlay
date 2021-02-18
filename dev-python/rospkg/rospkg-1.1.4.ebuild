EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit distutils-r1

DESCRIPTION="ROS package library"
HOMEPAGE="http://wiki.ros.org/rospkg"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz -> ${P}-overlay.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
