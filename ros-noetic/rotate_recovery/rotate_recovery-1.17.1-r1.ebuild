# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_7,3_8} )

inherit ros-cmake

DESCRIPTION="This package provides a recovery behavior for the navigation stack that att[...]"
HOMEPAGE="http://wiki.ros.org/rotate_recovery"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/noetic/${PN}/1.17.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/geometry_msgs
	ros-noetic/nav_core
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/angles
	ros-noetic/base_local_planner
	ros-noetic/catkin
	ros-noetic/cmake_modules
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
