# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Add more Flake8 warnings."
HOMEPAGE="https://github.com/PyCQA/flake8-import-order"
SRC_URI="https://github.com/PyCQA/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"
IUSE="test"

RDEPEND="
	>=dev-python/pyflakes-1.5.0[${PYTHON_USEDEP}]
	<dev-python/pyflakes-1.7.0[${PYTHON_USEDEP}]
	>=dev-python/pycodestyle-2.0.0[${PYTHON_USEDEP}]
	dev-python/asttokens[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pycodestyle[${PYTHON_USEDEP}]
	test? (
		  dev-python/pycodestyle[${PYTHON_USEDEP}]
		  dev-python/pytest[${PYTHON_USEDEP}]
		  >=dev-python/mock-2.0.0[${PYTHON_USEDEP}]
	)
"

python_test() {
	py.test -v || die "Tests fail with ${EPYTHON}"
}
