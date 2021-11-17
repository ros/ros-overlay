# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The mesh_map package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uos-gbp/mesh_navigation-release/archive/release/noetic/${PN}/1.0.1-2.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/mesh_client
	ros-noetic/mesh_msgs_conversions
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
	ros-noetic/xmlrpcpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
