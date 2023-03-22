# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains examples of applying the \'dynamixel_workbench_toolbo[...]"
HOMEPAGE="http://wiki.ros.org/dynamixel_workbench_controllers"
SRC_URI="https://github.com/ROBOTIS-GIT-release/dynamixel-workbench-release/archive/release/noetic/${PN}/2.2.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/dynamixel_workbench_msgs
	ros-noetic/dynamixel_workbench_toolbox
	ros-noetic/geometry_msgs
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/trajectory_msgs
	dev-cpp/eigen
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
