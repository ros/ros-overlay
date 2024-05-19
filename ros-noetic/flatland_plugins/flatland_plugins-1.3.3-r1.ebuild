# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Default plugins for flatland"
HOMEPAGE="https://bitbucket.org/avidbots/flatland"
SRC_URI="https://github.com/avidbots/flatland-release/archive/release/noetic/${PN}/1.3.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cmake_modules
	ros-noetic/flatland_msgs
	ros-noetic/flatland_server
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
