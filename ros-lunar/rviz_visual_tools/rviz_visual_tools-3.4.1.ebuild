# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake
DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published marker"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/rviz_visual_tools-release/archive/release/lunar/rviz_visual_tools/3.4.1-0.tar.gz -> ${PN}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/eigen_conversions
	ros-lunar/eigen_stl_containers
	ros-lunar/geometry_msgs
	ros-lunar/graph_msgs
	ros-lunar/roscpp
	ros-lunar/roslint
	ros-lunar/rviz
	ros-lunar/sensor_msgs
	ros-lunar/std_msgs
	ros-lunar/tf_conversions
	ros-lunar/trajectory_msgs
	ros-lunar/visualization_msgs
	dev-qt/qtx11extras:5
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="lunar"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

