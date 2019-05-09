# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package containing messages for communicating with rotary wing MAVs"
HOMEPAGE="https://github.com/ethz-asl/mav_comm"
SRC_URI="https://github.com/ethz-asl/mav_comm-release/archive/release/lunar/${PN}/3.3.2-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/std_msgs
	ros-lunar/trajectory_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
