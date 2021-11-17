# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package contains nodes that control the Dynamixel by communicating wit[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_operators"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/${PN}/2.2.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	ros-noetic/trajectory_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
