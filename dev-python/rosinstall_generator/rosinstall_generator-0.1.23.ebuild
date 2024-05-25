# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="A tool for generating rosinstall files."
HOMEPAGE="http://wiki.ros.org/rosinstall_generator"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~arm"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/rospkg[${PYTHON_USEDEP}]
	dev-python/rosdistro[${PYTHON_USEDEP}]
	>=dev-python/catkin_pkg-0.1.28[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
