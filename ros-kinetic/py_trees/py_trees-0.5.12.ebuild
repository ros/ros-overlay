# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Pythonic implementation of behaviour trees."
HOMEPAGE="http://py-trees.readthedocs.io"
SRC_URI="https://github.com/stonier/${PN}-release/archive/release/kinetic/${PN}/0.5.12-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/python-enum34
	dev-python/pydot
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
