# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="pr2_teleop_general"
HOMEPAGE="http://ros.org/wiki/pr2_teleop_general"
SRC_URI="https://github.com/pr2-gbp/pr2_apps-release/archive/release/melodic/${PN}/0.6.1-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/angles
	ros-melodic/geometry_msgs
	ros-melodic/moveit_msgs
	ros-melodic/polled_camera
	ros-melodic/pr2_arm_kinematics
	ros-melodic/pr2_common_action_msgs
	ros-melodic/pr2_controller_manager
	ros-melodic/pr2_controllers_msgs
	ros-melodic/pr2_mannequin_mode
	ros-melodic/pr2_mechanism_msgs
	ros-melodic/pr2_msgs
	ros-melodic/pr2_tuck_arms_action
	ros-melodic/ps3joy
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/tf
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
