# Copyright 2024 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The operator is a lightweight, purely reactive obstacle-avoidance\
	modu[...]"
HOMEPAGE="http://wiki.ros.org/nav2d_operator"
SRC_URI="https://github.com/skasperski/navigation_2d-release/archive/release/noetic/${PN}/0.4.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/costmap_2d
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/tf
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
	ros-noetic/tf2_ros
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
