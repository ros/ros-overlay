# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="Provides a ROS interface to Ubiquity Robotics Magni motor controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/ubiquity_motor-release/archive/release/indigo/ubiquity_motor/0.5.0-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diff_drive_controller
	ros-indigo/dynamic_reconfigure
	ros-indigo/geometry_msgs
	ros-indigo/hardware_interface
	ros-indigo/joint_state_controller
	ros-indigo/nav_msgs
	ros-indigo/serial
	ros-indigo/tf
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/roscpp
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
