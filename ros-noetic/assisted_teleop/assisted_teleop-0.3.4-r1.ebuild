# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The assisted_teleop node subscribes to a desired trajectory topic\
	\(ge[...]"
HOMEPAGE="http://wiki.ros.org/assisted_teleop"
SRC_URI="https://github.com/ros-gbp/navigation_experimental-release/archive/release/noetic/${PN}/0.3.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/angles
	ros-noetic/base_local_planner
	ros-noetic/costmap_2d
	ros-noetic/filters
	ros-noetic/geometry_msgs
	ros-noetic/message_filters
	ros-noetic/move_base_msgs
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/roslib
	ros-noetic/sensor_msgs
	ros-noetic/tf2_ros
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
