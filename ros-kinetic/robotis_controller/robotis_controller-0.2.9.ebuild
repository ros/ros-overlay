# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="robotis_controller package for ROBOTIS\'s platform like Manipulator-H, THOR[...]"
HOMEPAGE="http://wiki.ros.org/robotis_controller"
SRC_URI="https://github.com/ROBOTIS-GIT-release/ROBOTIS-Framework-release/archive/release/kinetic/${PN}/0.2.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/dynamixel_sdk
	ros-kinetic/robotis_controller_msgs
	ros-kinetic/robotis_device
	ros-kinetic/robotis_framework_common
	ros-kinetic/roscpp
	ros-kinetic/roslib
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
