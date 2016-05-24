EAPI=5
PYTHON_COMPAT=( python{2_7,3_3,3_4} )

inherit distutils-r1

DESCRIPTION="A tool for managing a workspace of multiple heterogenous SCM repositories"
HOMEPAGE="http://wiki.ros.org/wstool"
SRC_URI="https://github.com/vcstools/${PN}/archive/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		>=dev-python/vcstools-0.1.34[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
