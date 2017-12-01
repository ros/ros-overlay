# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The handeye package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/crigroup/handeye-release/archive/release/indigo/handeye/0.1.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/baldor
	ros-indigo/criutils
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/std_msgs
	virtual/python-enum34
	dev-python/matplotlib
	dev-python/numpy
	sci-libs/scipy
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
