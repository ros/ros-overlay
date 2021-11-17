# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="This package provides a spline based implementation to local robot navigati[...]"
HOMEPAGE="http://wiki.ros.org/base_local_planner"
SRC_URI="https://github.com/neobotix/${PN}-release/archive/release/noetic/${PN}/1.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/base_local_planner
	ros-noetic/costmap_2d
	ros-noetic/dynamic_reconfigure
	ros-noetic/nav_core
	ros-noetic/nav_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/tf2_sensor_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
