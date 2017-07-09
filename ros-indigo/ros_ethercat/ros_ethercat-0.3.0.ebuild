# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="'A pr2 agnostic replacement for robots using EtherCAT'"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/shadow-robot/ros_ethercat-release/archive/release/indigo/ros_ethercat/0.3.0-0.tar.gz -> ${PN}-release-${PV}.tar.gz"

LICENSE="( BSD GPL-1 )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-indigo/ros_ethercat_eml
	ros-indigo/ros_ethercat_hardware
	ros-indigo/ros_ethercat_loop
	ros-indigo/ros_ethercat_model
"
DEPEND="${RDEPEND}
	ros-indigo/catkin
"

SLOT="0"
ROS_DISTRO="indigo"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"

