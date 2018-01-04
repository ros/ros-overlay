# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="The magni_bringup package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/magni_robot-release/archive/release/kinetic/${PN}/0.2.4-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diff_drive_controller
	ros-kinetic/joint_state_controller
	ros-kinetic/magni_description
	ros-kinetic/robot_state_publisher
	ros-kinetic/ubiquity_motor
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
