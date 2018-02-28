# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="pr2_teleop_general"
HOMEPAGE="http://ros.org/wiki/pr2_teleop_general"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/kinetic/${PN}/0.6.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/actionlib
	ros-kinetic/actionlib_msgs
	ros-kinetic/angles
	ros-kinetic/geometry_msgs
	ros-kinetic/moveit_msgs
	ros-kinetic/polled_camera
	ros-kinetic/pr2_arm_kinematics
	ros-kinetic/pr2_common_action_msgs
	ros-kinetic/pr2_controller_manager
	ros-kinetic/pr2_controllers_msgs
	ros-kinetic/pr2_mannequin_mode
	ros-kinetic/pr2_mechanism_msgs
	ros-kinetic/pr2_msgs
	ros-kinetic/pr2_tuck_arms_action
	ros-kinetic/ps3joy
	ros-kinetic/roscpp
	ros-kinetic/sensor_msgs
	ros-kinetic/tf
	ros-kinetic/urdf
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
