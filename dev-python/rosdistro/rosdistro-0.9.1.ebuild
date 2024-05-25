# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the Apache 2.0 license

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy3 )
DISTUTILS_USE_PEP517=setuptools

SCM=""
if [ "${PV#9999}" != "${PV}" ] ; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/ros-infrastructure/rosdistro"
fi

inherit ${SCM} distutils-r1

DESCRIPTION="Tools to work with catkinized rosdistro files"
HOMEPAGE="https://wiki.ros.org/rosdistro"
if [ "${PV#9999}" != "${PV}" ] ; then
	SRC_URI=""
else
	SRC_URI="https://github.com/ros-infrastructure/rosdistro/archive/${PV}.tar.gz -> ${P}-gh.tar.gz"
	KEYWORDS="~amd64 ~arm"
fi

LICENSE="BSD"
SLOT="0"

RDEPEND="
	dev-python/catkin_pkg[${PYTHON_USEDEP}]
	dev-python/rospkg[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest
