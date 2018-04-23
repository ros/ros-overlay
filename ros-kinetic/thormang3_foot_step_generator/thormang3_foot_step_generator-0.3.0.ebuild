# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package provides foot step generation for the thormang3"
HOMEPAGE="http://wiki.ros.org/thormang3_foot_step_generator"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-THORMANG-OPC-release/archive/release/kinetic/${PN}/0.3.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/std_msgs
	ros-kinetic/thormang3_walking_module_msgs
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
