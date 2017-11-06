# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="This stack contains the different packages related to the RoNeX Robot Nervous S"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/sr-ronex-release/archive/release/indigo/sr_ronex/0.11.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="LGPL-3"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/sr_ronex_controllers
	ros-indigo/sr_ronex_drivers
	ros-indigo/sr_ronex_examples
	ros-indigo/sr_ronex_external_protocol
	ros-indigo/sr_ronex_hardware_interface
	ros-indigo/sr_ronex_launch
	ros-indigo/sr_ronex_msgs
	ros-indigo/sr_ronex_transmissions
	ros-indigo/sr_ronex_utilities
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

