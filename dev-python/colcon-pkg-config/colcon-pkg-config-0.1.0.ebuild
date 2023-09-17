# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Extension for colcon adding an environment variable to find pkg-config files."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"

IUSE="test"
DEPEND="dev-python/colcon-core[${PYTHON_USEDEP}]
	test? ( dev-python/flake8 )
	test? ( dev-python/flake8-import-order )
	test? ( dev-python/mock )
	test? ( dev-python/pycodestyle )
	test? ( dev-python/pylint )
	test? ( dev-util/scspell3k[${PYTHON_USEDEP}] )"
RDEPEND="${DEPEND}"

distutils_enable_tests pytest
