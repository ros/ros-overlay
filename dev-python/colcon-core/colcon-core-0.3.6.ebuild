# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=6
PYTHON_COMPAT=( python{3_5,3_6,3_7} )

inherit distutils-r1

DESCRIPTION="Collective Construction: build and test multiple software packages."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/coloredlogs[${PYTHON_USEDEP}]
        dev-python/empy[${PYTHON_USEDEP}]
        dev-python/pytest[${PYTHON_USEDEP}]
        dev-python/pytest-cov[${PYTHON_USEDEP}]
        dev-python/pytest-repeat[${PYTHON_USEDEP}]
        dev-python/pytest-rerunfailures[${PYTHON_USEDEP}]
        dev-python/pytest-runner[${PYTHON_USEDEP}]
        >=dev-python/setuptools[${PYTHON_USEDEP}]-30.3.0
        test? ( dev-python/flake8 )
        test? ( dev-pyton/flake8-import-order )
        test? ( dev-python/mock )
        test? ( dev-python/pep8 )
        test? ( dev-python/pylint )"
RDEPEND="${DEPEND}"
