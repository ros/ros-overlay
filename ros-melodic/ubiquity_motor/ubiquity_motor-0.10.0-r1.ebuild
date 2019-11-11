# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a ROS interface to Ubiquity Robotics Magni motor controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/UbiquityRobotics-release/${PN}-release/archive/release/melodic/${PN}/0.10.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/controller_manager
	ros-melodic/diagnostic_updater
	ros-melodic/diff_drive_controller
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/hardware_interface
	ros-melodic/joint_state_controller
	ros-melodic/nav_msgs
	ros-melodic/serial
	ros-melodic/std_msgs
	ros-melodic/tf
	test? ( ros-melodic/rostest )
	dev-python/requests
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roscpp
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
