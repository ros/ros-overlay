# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'Automatic docking for Kobuki:
		Users owning a docking station for Kobuki can'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/yujinrobot-release/kobuki-release/archive/release/indigo/kobuki_auto_docking/0.6.8-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/actionlib
	ros-indigo/actionlib_msgs
	ros-indigo/ecl_geometry
	ros-indigo/ecl_linear_algebra
	ros-indigo/ecl_threads
	ros-indigo/geometry_msgs
	ros-indigo/kdl_conversions
	ros-indigo/kobuki_dock_drive
	ros-indigo/kobuki_msgs
	ros-indigo/message_filters
	ros-indigo/nav_msgs
	ros-indigo/nodelet
	ros-indigo/pluginlib
	ros-indigo/roscpp
	ros-indigo/rospy
	ros-indigo/std_msgs
	ros-indigo/yocs_cmd_vel_mux
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

