# Copyright 2018 Open Source Robotics Foundation, Inc.
# Distributed under the terms of the BSD License

EAPI=6

PYTHON_COMPAT=( python2_7 python3_{4,5,6} pypy{,3} )

inherit distutils-r1

DESCRIPTION="Docstring style checker"
HOMEPAGE="https://github.com/PyCQA/pydocstyle"
SRC_URI="https://github.com/PyCQA/${PN}/archive/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~arm64 ~hppa ~ia64 ~mips ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~x64-macos ~x86-macos ~sparc-solaris ~sparc64-solaris ~x64-solaris ~x86-solaris"

RDEPENDS="
	dev-python/snowballstemmer
	dev-python/six
"
DEPENDS="${RDEPENDS}"

