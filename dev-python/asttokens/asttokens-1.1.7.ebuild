# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Annotate Python AST's."
HOMEPAGE="https://github.com/gristlabs/${PN}"
SRC_URI="https://github.com/gristlabs/${PN}/archive/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"

RDEPEND="
	dev-python/six[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pycodestyle[${PYTHON_USEDEP}]
	test? (
		  dev-python/coverage[${PYTHON_USEDEP}]
		  dev-python/nose[${PYTHON_USEDEP}]
		  dev-python/astroid[${PYTHON_USEDEP}]
	)
"

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}
