# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=6
PYTHON_COMPAT=( python{3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="An extension for colcon-core to support CMake projects."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

IUSE="test"
DEPEND=">=dev-python/colcon-core-0.3.0[${PYTHON_USEDEP}]
        test? ( dev-python/flake8 )
        test? ( dev-pyton/flake8-import-order )
        test? ( dev-python/mock )
        test? ( dev-python/pep8 )
        test? ( dev-python/pylint )"
RDEPEND="${DEPEND}"
