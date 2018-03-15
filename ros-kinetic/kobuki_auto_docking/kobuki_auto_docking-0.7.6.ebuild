# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Automatic docking for Kobuki:\
\		Users owning a docking station for Kob[...]"
HOMEPAGE="http://ros.org/wiki/kobuki_auto_docking"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/kinetic/${PN}/0.7.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/ecl_geometry
	ros-kinetic/ecl_linear_algebra
	ros-kinetic/ecl_threads
	ros-kinetic/geometry_msgs
	ros-kinetic/kdl_conversions
	ros-kinetic/kobuki_dock_drive
	ros-kinetic/kobuki_msgs
	ros-kinetic/message_filters
	ros-kinetic/nav_msgs
	ros-kinetic/nodelet
	ros-kinetic/pluginlib
	ros-kinetic/roscpp
	ros-kinetic/rospy
	ros-kinetic/std_msgs
	ros-kinetic/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
