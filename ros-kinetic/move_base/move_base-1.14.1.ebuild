# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://wiki.ros.org/move_base"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/kinetic/move_base/1.14.1-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/base_local_planner
	ros-kinetic/clear_costmap_recovery
	ros-kinetic/costmap_2d
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/message_runtime
	ros-kinetic/move_base_msgs
	ros-kinetic/nav_core
	ros-kinetic/nav_msgs
	ros-kinetic/navfn
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/rotate_recovery
	ros-kinetic/std_srvs
	ros-kinetic/tf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/cmake_modules
	ros-kinetic/message_generation
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

