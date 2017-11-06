# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains the different gui plugins used with the shadow robot st[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-visualization-release/archive/release/indigo/sr_visualization/1.3.1-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( GPL-1 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/sr_gui_bootloader
	ros-indigo/sr_gui_change_controllers
	ros-indigo/sr_gui_change_muscle_controllers
	ros-indigo/sr_gui_controller_tuner
	ros-indigo/sr_gui_grasp_controller
	ros-indigo/sr_gui_hand_calibration
	ros-indigo/sr_gui_joint_slider
	ros-indigo/sr_gui_motor_resetter
	ros-indigo/sr_gui_movement_recorder
	ros-indigo/sr_gui_muscle_driver_bootloader
	ros-indigo/sr_gui_self_test
	ros-indigo/sr_visualization_icons
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
