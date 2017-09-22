# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains ros_control based robot controller for PANASONIC MINA[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/kinetic/minas_control/1.0.6-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/controller_manager
	ros-kinetic/diagnostic_updater
	ros-kinetic/ethercat_manager
	ros-kinetic/hardware_interface
	ros-kinetic/joint_limits_interface
	ros-kinetic/sensor_msgs
	ros-kinetic/trajectory_msgs
	ros-kinetic/transmission_interface
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
	ros-kinetic/soem
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
