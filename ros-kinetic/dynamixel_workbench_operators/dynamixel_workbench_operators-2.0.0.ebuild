# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains nodes that control the Dynamixel by communicating wit[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_operators"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/kinetic/${PN}/2.0.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/cmake_modules
	ros-kinetic/geometry_msgs
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/std_srvs
	ros-kinetic/trajectory_msgs
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
