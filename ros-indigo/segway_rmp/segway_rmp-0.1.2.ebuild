# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="segway_rmp"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/segwayrmp/segway_rmp-release/archive/release/indigo/segway_rmp/0.1.2-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/geometry_msgs
	ros-indigo/libsegwayrmp
	ros-indigo/message_runtime
	ros-indigo/nav_msgs
	ros-indigo/roscpp
	ros-indigo/serial
	ros-indigo/std_msgs
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/message_generation
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
