# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The spatio-temporal 3D obstacle costmap package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/${PN}-release/archive/release/noetic/${PN}/1.4.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2.1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/laser_geometry
	ros-noetic/message_filters
	ros-noetic/pcl_conversions
	ros-noetic/pcl_ros
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
	media-libs/openexr
	media-gfx/openvdb
	media-gfx/openvdb
	dev-cpp/tbb
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
