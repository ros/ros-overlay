# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit distutils-r1

DESCRIPTION="An extension for colcon-core to support CMake projects."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

IUSE="test"
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
	dev-python/colcon-zsh[${PYTHON_USEDEP}]
        test? ( dev-python/flake8 )
        test? ( dev-pyton/flake8-import-order )
        test? ( dev-python/mock )
        test? ( dev-python/pep8 )
        test? ( dev-python/pylint )"
RDEPEND="${DEPEND}"
