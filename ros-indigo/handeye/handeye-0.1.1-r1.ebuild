# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The handeye package"
HOMEPAGE="http://wiki.ros.org/handeye"
SRC_URI="https://github.com/crigroup/${PN}-release/archive/release/indigo/${PN}/0.1.1-1.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-indigo/baldor
	ros-indigo/criutils
	ros-indigo/geometry_msgs
	ros-indigo/message_runtime
	ros-indigo/std_msgs
	test? ( ros-indigo/rostest )
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
