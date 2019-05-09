# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package containing messages for communicating with rotary wing MAVs"
HOMEPAGE="https://github.com/ethz-asl/mav_comm"
SRC_URI="https://github.com/ethz-asl/mav_comm-release/archive/release/kinetic/${PN}/3.3.2-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="ASL 2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/std_msgs
	ros-kinetic/trajectory_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
