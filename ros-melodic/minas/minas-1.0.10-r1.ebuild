# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Meta package for minas for PANASONIC MINAS EtherCAT Motor Driver Control System"
HOMEPAGE="http://ros.org/wiki/minas"
SRC_URI="https://github.com/tork-a/${PN}-release/archive/release/melodic/${PN}/1.0.10-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( GPL-2.0-only BSD CC-BY-SA )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ethercat_manager
	ros-melodic/minas_control
	ros-melodic/tra1_bringup
	ros-melodic/tra1_description
	ros-melodic/tra1_moveit_config
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
