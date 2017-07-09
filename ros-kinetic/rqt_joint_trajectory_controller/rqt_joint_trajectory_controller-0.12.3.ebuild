# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Graphical frontend for interacting with joint_trajectory_controller instances"
HOMEPAGE="http://wiki.ros.org/rqt_joint_trajectory_controller"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/kinetic/rqt_joint_trajectory_controller/0.12.3-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="CC-BY-SA-3.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/control_msgs
	ros-kinetic/controller_manager_msgs
	ros-kinetic/rospy
	ros-kinetic/rqt_gui
	ros-kinetic/rqt_gui_py
	ros-kinetic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

