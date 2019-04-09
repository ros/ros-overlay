# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a ROS interface to Ubiquity Robotics Magni motor controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/${PN}-release/archive/release/kinetic/${PN}/0.9.0-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/diff_drive_controller
	ros-kinetic/dynamic_reconfigure
	ros-kinetic/geometry_msgs
	ros-kinetic/hardware_interface
	ros-kinetic/joint_state_controller
	ros-kinetic/nav_msgs
	ros-kinetic/serial
	ros-kinetic/tf
	test? ( ros-kinetic/rostest )
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/roscpp
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
