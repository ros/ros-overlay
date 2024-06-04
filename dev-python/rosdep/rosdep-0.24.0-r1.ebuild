# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license
EAPI=8
PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1

DESCRIPTION="Package manager for ROS."
HOMEPAGE="http://wiki.ros.org/rosdep"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/refs/tags/${PV}.tar.gz -> ${P}-gh.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-3.1[${PYTHON_USEDEP}]
	>=dev-python/rosdistro-0.7.5[${PYTHON_USEDEP}]
	>=dev-python/catkin_pkg-0.4.0[${PYTHON_USEDEP}]
	>=dev-python/rospkg-1.4.0[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
BDEPEND="
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/flake8[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest
