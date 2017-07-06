# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Converts a 3D Point Cloud into a 2D laser scan. This is useful for making device'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/pointcloud_to_laserscan-release/archive/release/kinetic/pointcloud_to_laserscan/1.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/message_filters
	ros-kinetic/nodelet
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf2
	ros-kinetic/tf2_ros
	ros-kinetic/tf2_sensor_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

