# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A GUI plugin for changing the position of the different joints.'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-visualization-release/archive/release/indigo/sr_gui_joint_slider/1.3.1-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="GPL-1"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager_msgs
	ros-indigo/rospy
	ros-indigo/rqt_gui
	ros-indigo/rqt_gui_py
	ros-indigo/sr_hand
	ros-indigo/sr_robot_lib
	ros-indigo/sr_robot_msgs
	ros-indigo/sr_visualization_icons
	ros-indigo/std_msgs
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

