EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit distutils-r1

DESCRIPTION="Library for managing source code trees.
			 from multiple version control systems.
			 currently supports svn, git, hg, and bzr."
HOMEPAGE="http://wiki.ros.org/vcstools"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64 x86 arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/python-dateutil[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# @todo tests and use flags per VCS
