# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Heifu is a ROS driver for PDMFC and BEV drone"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/BV-OpenSource/heifu-release/archive/release/melodic/${PN}/0.7.7-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/heifu_description
	ros-melodic/heifu_mavros
	ros-melodic/heifu_msgs
	ros-melodic/heifu_safety
	ros-melodic/heifu_tools
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
