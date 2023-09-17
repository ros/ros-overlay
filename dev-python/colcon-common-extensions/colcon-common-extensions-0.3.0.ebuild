# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="An extension for colcon-core to support CMake projects."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.gh.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~x86"
IUSE="test"
RESTRICT="!test? ( test )"

DEPEND="dev-python/colcon-argcomplete[${PYTHON_USEDEP}]
	dev-python/colcon-bash[${PYTHON_USEDEP}]
	dev-python/colcon-cd[${PYTHON_USEDEP}]
	dev-python/colcon-cmake[${PYTHON_USEDEP}]
	dev-python/colcon-core[${PYTHON_USEDEP}]
	dev-python/colcon-defaults[${PYTHON_USEDEP}]
	dev-python/colcon-devtools[${PYTHON_USEDEP}]
	dev-python/colcon-library-path[${PYTHON_USEDEP}]
	dev-python/colcon-metadata[${PYTHON_USEDEP}]
	dev-python/colcon-notification[${PYTHON_USEDEP}]
	dev-python/colcon-output[${PYTHON_USEDEP}]
	dev-python/colcon-package-information[${PYTHON_USEDEP}]
	dev-python/colcon-package-selection[${PYTHON_USEDEP}]
	dev-python/colcon-parallel-executor[${PYTHON_USEDEP}]
	dev-python/colcon-powershell[${PYTHON_USEDEP}]
	dev-python/colcon-python-setup-py[${PYTHON_USEDEP}]
	dev-python/colcon-recursive-crawl[${PYTHON_USEDEP}]
	dev-python/colcon-ros[${PYTHON_USEDEP}]
	dev-python/colcon-test-result[${PYTHON_USEDEP}]
	dev-python/colcon-zsh[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
