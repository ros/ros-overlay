# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit distutils-r1

DESCRIPTION="Extension for colcon to support ROS packages."
HOMEPAGE="https://colcon.readthedocs.io"
SRC_URI="https://github.com/colcon/${PN}/archive/${PV}.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

IUSE="test"
DEPEND=">=dev-python/catkin_pkg-0.4.14[${PYTHON_USEDEP}]
	>=dev-python/colcon-cmake-0.2.6[${PYTHON_USEDEP}]
	>=dev-python/colcon-core-0.5.3[${PYTHON_USEDEP}]
	dev-python/colcon-pkg-config[${PYTHON_USEDEP}]
	>=dev-python/colcon-python-setup-py-0.2.4[${PYTHON_USEDEP}]
	dev-python/colcon-recursive-crawl[${PYTHON_USEDEP}]
	test? ( dev-python/flake8 )
	test? ( dev-pyton/flake8-import-order )
	test? ( dev-python/mock )
	test? ( dev-python/pep8 )
	test? ( dev-python/pylint )"
RDEPEND="${DEPEND}"
