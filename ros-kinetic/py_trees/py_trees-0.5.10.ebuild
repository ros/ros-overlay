# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Pythonic implementation of behaviour trees"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/py_trees-release/archive/release/kinetic/py_trees/0.5.10-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/python-enum34
	media-gfx/pydot
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

