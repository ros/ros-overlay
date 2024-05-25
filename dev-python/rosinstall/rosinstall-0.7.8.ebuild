# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 pypi

DESCRIPTION="The installer for ROS"
HOMEPAGE="http://wiki.ros.org/rosinstall"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/catkin_pkg[${PYTHON_USEDEP}]
	>=dev-python/vcstools-0.1.30[${PYTHON_USEDEP}]
	>=dev-python/rosdistro-0.3.0[${PYTHON_USEDEP}]
	>=dev-python/wstool-0.1.0[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
