# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_teleop_general"
HOMEPAGE="http://ros.org/wiki/pr2_teleop_general"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/lunar/${PN}/0.6.1-0.tar.gz -> ${PN}-lunar-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-lunar/actionlib
	ros-lunar/actionlib_msgs
	ros-lunar/angles
	ros-lunar/geometry_msgs
	ros-lunar/moveit_msgs
	ros-lunar/polled_camera
	ros-lunar/pr2_arm_kinematics
	ros-lunar/pr2_common_action_msgs
	ros-lunar/pr2_controller_manager
	ros-lunar/pr2_controllers_msgs
	ros-lunar/pr2_mannequin_mode
	ros-lunar/pr2_mechanism_msgs
	ros-lunar/pr2_msgs
	ros-lunar/pr2_tuck_arms_action
	ros-lunar/ps3joy
	ros-lunar/roscpp
	ros-lunar/sensor_msgs
	ros-lunar/tf
	ros-lunar/urdf
"
DEPEND="${RDEPEND}
	ros-lunar/catkin
"

SLOT="0"
ROS_DISTRO="lunar"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
