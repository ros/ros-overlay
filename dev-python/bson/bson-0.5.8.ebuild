EAPI=8
PYTHON_COMPAT=( python3_{8..11} )

inherit distutils-r1

DESCRIPTION="Independent BSON codec for Python that doesn’t depend on MongoDB."
HOMEPAGE="https://github.com/py-bson/bson"
SRC_URI="https://github.com/py-${PN}/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

DEPEND="dev-python/pytz[${PYTHON_USEDEP}]
		dev-python/six[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# @todo tests
