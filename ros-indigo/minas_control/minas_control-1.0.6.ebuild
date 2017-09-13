# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This package contains ros_control based robot controller for PANASONIC MINA[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/tork-a/minas-release/archive/release/indigo/minas_control/1.0.6-0.tar.gz -> ${PN}-indigo-release-${PV}.tar.gz"

LICENSE="( GPL-2 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/controller_manager
	ros-indigo/diagnostic_updater
	ros-indigo/ethercat_manager
	ros-indigo/hardware_interface
	ros-indigo/joint_limits_interface
	ros-indigo/sensor_msgs
	ros-indigo/trajectory_msgs
	ros-indigo/transmission_interface
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
	ros-indigo/soem
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
