# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Utility functions for displaying and debugging data in Rviz via published m[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/davetcoleman/${PN}-release/archive/release/kinetic/${PN}/3.5.1-3.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/eigen_conversions
	ros-kinetic/eigen_stl_containers
	ros-kinetic/geometry_msgs
	ros-kinetic/graph_msgs
	ros-kinetic/roscpp
	ros-kinetic/roslint
	ros-kinetic/rviz
	ros-kinetic/sensor_msgs
	ros-kinetic/std_msgs
	ros-kinetic/tf_conversions
	ros-kinetic/trajectory_msgs
	ros-kinetic/visualization_msgs
	dev-qt/qtx11extras:5
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
