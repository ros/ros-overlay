# Copyright 2020 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Converts a 3D Point Cloud into a 2D laser scan. This is useful for making d[...]"
HOMEPAGE="http://ros.org/wiki/perception_pcl"
SRC_URI="https://github.com/ros-gbp/${PN}-release/archive/release/noetic/${PN}/1.4.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/laser_geometry
	ros-noetic/message_filters
	ros-noetic/nodelet
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf2
	ros-noetic/tf2_ros
	ros-noetic/tf2_sensor_msgs
	test? ( ros-noetic/roslint )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
