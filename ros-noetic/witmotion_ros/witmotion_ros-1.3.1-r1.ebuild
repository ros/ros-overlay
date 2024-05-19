# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Standalone QT-based IMU/GPS decoder nodes for Witmotion UART-compatible sen[...]"
HOMEPAGE="https://wiki.ros.org/witmotion_ros"
SRC_URI="https://github.com/twdragon/${PN}-release/archive/release/noetic/${PN}/1.3.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_core
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2
	ros-noetic/tf2_geometry_msgs
	dev-qt/qtserialport:5
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
