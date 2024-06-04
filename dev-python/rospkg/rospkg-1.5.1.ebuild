# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the Apache 2.0 license

EAPI=8

PYTHON_COMPAT=( python3_{10..12} pypy3 )
DISTUTILS_USE_PEP517=setuptools

SCM=""
if [ "${PV#9999}" != "${PV}" ] ; then
	SCM="git-r3"
	EGIT_REPO_URI="https://github.com/ros-infrastructure/rospkg"
fi

inherit ${SCM} distutils-r1

DESCRIPTION="Standalone Python library for the ROS package system."
HOMEPAGE="https://wiki.ros.org/rospkg"
if [ "${PV#9999}" != "${PV}" ] ; then
	SRC_URI=""
else
	SRC_URI="https://github.com/ros-infrastructure/rospkg/archive/${PV}.tar.gz -> ${P}-gh.tar.gz"
	KEYWORDS="~amd64 ~arm"
fi

LICENSE="BSD"
SLOT="0"

RDEPEND="
	dev-python/catkin_pkg[${PYTHON_USEDEP}]
        dev-python/pyyaml[${PYTHON_USEDEP}]"
BDEPEND="
	test? (
		dev-python/pytest[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest
