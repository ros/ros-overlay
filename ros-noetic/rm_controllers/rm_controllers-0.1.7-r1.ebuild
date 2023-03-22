# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package that contains package for RoboMaster."
HOMEPAGE="https://github.com/rm-controls/rm_controllers"
SRC_URI="https://github.com/rm-controls/${PN}-release/archive/release/noetic/${PN}/0.1.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/gpio_controller
	ros-noetic/mimic_joint_controller
	ros-noetic/rm_calibration_controllers
	ros-noetic/rm_chassis_controllers
	ros-noetic/rm_gimbal_controllers
	ros-noetic/rm_orientation_controller
	ros-noetic/rm_shooter_controllers
	ros-noetic/robot_state_controller
	ros-noetic/tof_radar_controller
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
