# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy3 )
DISTUTILS_USE_PEP517=setuptools
PYPI_NO_NORMALIZE=1

inherit distutils-r1 pypi

DESCRIPTION="pytest plugin for repeating tests"
HOMEPAGE="https://pypi.org/project/pytest-repeat/"

SLOT="0"
LICENSE="MPL-2.0"
KEYWORDS="amd64 arm arm64 ~hppa ~ia64 ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux"

BDEPEND="
	>=dev-python/pytest-3.6[${PYTHON_USEDEP}]
	test? ( !!dev-python/flaky )
"

distutils_enable_tests pytest
