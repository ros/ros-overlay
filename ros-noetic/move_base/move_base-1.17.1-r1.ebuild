# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="The move_base package provides an implementation of an action \(see the <a [...]"
HOMEPAGE="http://wiki.ros.org/move_base"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/noetic/${PN}/1.17.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/base_local_planner
	ros-noetic/clear_costmap_recovery
	ros-noetic/costmap_2d
	ros-noetic/dynamic_reconfigure
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/move_base_msgs
	ros-noetic/nav_core
	ros-noetic/nav_msgs
	ros-noetic/navfn
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/rotate_recovery
	ros-noetic/std_srvs
	ros-noetic/tf2_ros
	ros-noetic/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/cmake_modules
	ros-noetic/message_generation
	ros-noetic/tf2_geometry_msgs
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
