# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System"
HOMEPAGE="http://ros.org/wiki/minas"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/kinetic/${PN}/1.0.10-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="( GPL-2 BSD CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/ethercat_manager
	ros-kinetic/minas_control
	ros-kinetic/tra1_bringup
	ros-kinetic/tra1_description
	ros-kinetic/tra1_moveit_config
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
