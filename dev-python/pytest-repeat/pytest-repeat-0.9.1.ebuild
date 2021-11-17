# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7

PYTHON_COMPAT=( python3_{8..10} pypy3 )
DISTUTILS_USE_SETUPTOOLS=rdepend
inherit distutils-r1

DESCRIPTION="pytest plugin for repeating tests"
HOMEPAGE="https://pypi.org/project/pytest-repeat/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
LICENSE="MPL-2.0"
KEYWORDS="amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux"

BDEPEND="
	>=dev-python/pytest-3.6[${PYTHON_USEDEP}]
	test? ( !!dev-python/flaky )
"

distutils_enable_tests pytest
