# Copyright 2018 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5} )

inherit ros-cmake

DESCRIPTION="CAN bus tools using Dataspeed hardware"
HOMEPAGE="http://dataspeedinc.com"
SRC_URI="https://github.com/DataspeedInc-release/${PN}-release/archive/release/kinetic/${PN}/1.0.9-0.tar.gz -> ${PN}-kinetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-kinetic/dataspeed_can_msg_filters
	ros-kinetic/dataspeed_can_tools
	ros-kinetic/dataspeed_can_usb
"
DEPEND="${RDEPEND}
	ros-kinetic/catkin
"

SLOT="0"
ROS_DISTRO="kinetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
