# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="a#text"
HOMEPAGE="http://wiki.ros.org/move_base"
SRC_URI="https://github.com/ros-gbp/navigation-release/archive/release/lunar/move_base/1.14.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/base_local_planner
	ros-lunar/clear_costmap_recovery
	ros-lunar/costmap_2d
	ros-lunar/dynamic_reconfigure
	ros-lunar/geometry_msgs
	ros-lunar/message_runtime
	ros-lunar/move_base_msgs
	ros-lunar/nav_core
	ros-lunar/nav_msgs
	ros-lunar/navfn
	ros-lunar/pluginlib
	ros-lunar/roscpp
	ros-lunar/rospy
	ros-lunar/rotate_recovery
	ros-lunar/std_msgs
	ros-lunar/std_srvs
	ros-lunar/tf
	ros-lunar/visualization_msgs
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
	ros-lunar/cmake_modules
	ros-lunar/message_generation
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

